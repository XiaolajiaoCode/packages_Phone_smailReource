.class public Lcom/android/phone/VideoCallPanel$ParamReadyListener;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Lcom/android/phone/MediaHandler$MediaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VideoCallPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParamReadyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method public constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$ParamReadyListener;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayModeEvent()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onParamReadyEvent()V
    .locals 5

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel$ParamReadyListener;->this$0:Lcom/android/phone/VideoCallPanel;

    # getter for: Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;
    invoke-static {v2}, Lcom/android/phone/VideoCallPanel;->access$100(Lcom/android/phone/VideoCallPanel;)Lcom/android/phone/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    .line 110
    .local v0, "cameraState":Lcom/android/phone/CameraHandler$CameraState;
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel$ParamReadyListener;->this$0:Lcom/android/phone/VideoCallPanel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onParamReadyEvent cameraState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VideoCallPanel;->access$200(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    .line 111
    sget-object v2, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STARTED:Lcom/android/phone/CameraHandler$CameraState;

    if-ne v0, v2, :cond_0

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel$ParamReadyListener;->this$0:Lcom/android/phone/VideoCallPanel;

    # getter for: Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;
    invoke-static {v2}, Lcom/android/phone/VideoCallPanel;->access$100(Lcom/android/phone/VideoCallPanel;)Lcom/android/phone/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->stopCameraPreview()V

    .line 116
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel$ParamReadyListener;->this$0:Lcom/android/phone/VideoCallPanel;

    # invokes: Lcom/android/phone/VideoCallPanel;->initializeCameraParams()V
    invoke-static {v2}, Lcom/android/phone/VideoCallPanel;->access$300(Lcom/android/phone/VideoCallPanel;)V

    .line 117
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel$ParamReadyListener;->this$0:Lcom/android/phone/VideoCallPanel;

    # getter for: Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;
    invoke-static {v2}, Lcom/android/phone/VideoCallPanel;->access$100(Lcom/android/phone/VideoCallPanel;)Lcom/android/phone/VideoCallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel$ParamReadyListener;->this$0:Lcom/android/phone/VideoCallPanel;

    # getter for: Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;
    invoke-static {v3}, Lcom/android/phone/VideoCallPanel;->access$400(Lcom/android/phone/VideoCallPanel;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/VideoCallManager;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel$ParamReadyListener;->this$0:Lcom/android/phone/VideoCallPanel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception onParamReadyEvent stopping and starting preview "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/VideoCallPanel;->access$500(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V

    goto :goto_0
.end method
