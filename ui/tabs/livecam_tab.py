import gradio as gr
import roop.globals
import ui.globals

fake_cam_image = None

current_cam_image = None
cam_swapping = False
camthread = None

def livecam_tab():
    with gr.Tab("🎥 Live Cam"):
        with gr.Row():
            with gr.Column(scale=2):
                cam_toggle = gr.Checkbox(label='Activate', value=ui.globals.ui_live_cam_active)
            with gr.Column(scale=1):
                vcam_toggle = gr.Checkbox(label='Stream to virtual camera', value=False)
            with gr.Column(scale=1):
                camera_num = gr.Slider(0, 2, value=0, label="Camera Number", step=1.0, interactive=True)                       

        if ui.globals.ui_live_cam_active:
            with gr.Row():
                with gr.Column():
                    cam = gr.Webcam(label='Camera', source='webcam', interactive=True, streaming=False)
                with gr.Column():
                    fake_cam_image = gr.Image(label='Fake Camera Output', interactive=False)

    cam_toggle.change(fn=on_cam_toggle, inputs=[cam_toggle])

    if ui.globals.ui_live_cam_active:
        vcam_toggle.change(fn=on_vcam_toggle, inputs=[vcam_toggle, camera_num], outputs=[cam, fake_cam_image])
        cam.stream(on_stream_swap_cam, inputs=[cam, ui.globals.ui_selected_enhancer, ui.globals.ui_blend_ratio], outputs=[fake_cam_image], preprocess=True, postprocess=True, show_progress="hidden")

def on_cam_toggle(state):
    ui.globals.ui_live_cam_active = state
    gr.Warning('Server will be restarted for this change!')
    ui.globals.ui_restart_server = True

def on_vcam_toggle(state, num):
    from roop.virtualcam import stop_virtual_cam, start_virtual_cam

    if state:
        yield gr.Webcam.update(interactive=False), None
        start_virtual_cam(num)
        return gr.Webcam.update(interactive=False), None
    else:
        stop_virtual_cam()
    return gr.Webcam.update(interactive=True), None



def on_stream_swap_cam(camimage, enhancer, blend_ratio):
    from roop.core import live_swap
    global current_cam_image, cam_swapping, fake_cam_image

    roop.globals.selected_enhancer = enhancer
    roop.globals.blend_ratio = blend_ratio

    if not cam_swapping:
        cam_swapping = True
        if len(roop.globals.INPUT_FACESETS) > 0:
            current_cam_image = live_swap(camimage, "all", False, None, ui.globals.ui_SELECTED_INPUT_FACE_INDEX)
        else:
            current_cam_image = camimage
        cam_swapping = False
    return current_cam_image


