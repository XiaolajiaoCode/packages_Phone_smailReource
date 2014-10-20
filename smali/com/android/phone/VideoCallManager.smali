.class public Lcom/android/phone/VideoCallManager;
.super Ljava/lang/Object;
.source "VideoCallManager.java"


# static fields
.field private static mInstance:Lcom/android/phone/VideoCallManager;


# instance fields
.field private mCameraHandler:Lcom/android/phone/CameraHandler;

.field private mMediaHandler:Lcom/android/phone/MediaHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "Instantiating VideoCallManager"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallManager;->log(Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/android/phone/CameraHandler;->getInstance(Landroid/content/Context;)Lcom/android/phone/CameraHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    .line 59
    new-instance v0, Lcom/android/phone/MediaHandler;

    invoke-direct {v0}, Lcom/android/phone/MediaHandler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/VideoCallManager;->mMediaHandler:Lcom/android/phone/MediaHandler;

    .line 60
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-class v1, Lcom/android/phone/VideoCallManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/VideoCallManager;->mInstance:Lcom/android/phone/VideoCallManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/phone/VideoCallManager;

    invoke-direct {v0, p0}, Lcom/android/phone/VideoCallManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/VideoCallManager;->mInstance:Lcom/android/phone/VideoCallManager;

    .line 71
    :cond_0
    sget-object v0, Lcom/android/phone/VideoCallManager;->mInstance:Lcom/android/phone/VideoCallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 313
    const-string v0, "VideoCallManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method


# virtual methods
.method public closeCamera()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->close()V

    .line 178
    return-void
.end method

.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getBackCameraId()I

    move-result v0

    return v0
.end method

.method public getCameraDirection()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getCameraDirection()I

    move-result v0

    return v0
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getCameraPreviewSize(IZ)Landroid/hardware/Camera$Size;
    .locals 9
    .param p1, "targetSize"    # I
    .param p2, "isHeight"    # Z

    .prologue
    .line 255
    const-wide v2, 0x7fefffffffffffffL

    .line 256
    .local v2, "minDiff":D
    const/4 v4, 0x0

    .line 258
    .local v4, "optimalSize":Landroid/hardware/Camera$Size;
    iget-object v7, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v7}, Lcom/android/phone/CameraHandler;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 259
    .local v1, "mSupportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v1, :cond_0

    const/4 v7, 0x0

    .line 277
    :goto_0
    return-object v7

    .line 263
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 264
    .local v5, "size":Landroid/hardware/Camera$Size;
    const/4 v6, 0x0

    .line 265
    .local v6, "srcSize":I
    if-eqz p2, :cond_2

    .line 266
    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    .line 272
    :goto_2
    sub-int v7, v6, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v7, v2

    if-gez v7, :cond_1

    .line 273
    move-object v4, v5

    .line 274
    sub-int v7, v6, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v2, v7

    goto :goto_1

    .line 269
    :cond_2
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    goto :goto_2

    .end local v5    # "size":Landroid/hardware/Camera$Size;
    .end local v6    # "srcSize":I
    :cond_3
    move-object v7, v4

    .line 277
    goto :goto_0
.end method

.method public getCameraState()Lcom/android/phone/CameraHandler$CameraState;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getFrontCameraId()I

    move-result v0

    return v0
.end method

.method public getNegotiatedFPS()I
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/android/phone/MediaHandler;->getNegotiatedFPS()S

    move-result v0

    return v0
.end method

.method public getNegotiatedHeight()I
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/android/phone/MediaHandler;->getNegotiatedHeight()I

    move-result v0

    return v0
.end method

.method public getNegotiatedWidth()I
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/android/phone/MediaHandler;->getNegotiatedWidth()I

    move-result v0

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public isCvoModeEnabled()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mMediaHandler:Lcom/android/phone/MediaHandler;

    invoke-virtual {v0}, Lcom/android/phone/MediaHandler;->isCvoModeEnabled()Z

    move-result v0

    return v0
.end method

.method public mediaDeInit()V
    .locals 0

    .prologue
    .line 85
    invoke-static {}, Lcom/android/phone/MediaHandler;->deInit()V

    .line 86
    return-void
.end method

.method public mediaInit()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mMediaHandler:Lcom/android/phone/MediaHandler;

    invoke-virtual {v0}, Lcom/android/phone/MediaHandler;->init()I

    move-result v0

    return v0
.end method

.method public declared-synchronized openCamera(I)Z
    .locals 1
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/CameraHandler;->open(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/CameraHandler;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 205
    return-void
.end method

.method public setDisplay(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/CameraHandler;->setDisplay(Landroid/graphics/SurfaceTexture;)V

    .line 241
    return-void
.end method

.method public setFarEndSurface()V
    .locals 0

    .prologue
    .line 100
    invoke-static {}, Lcom/android/phone/MediaHandler;->setSurface()V

    .line 101
    return-void
.end method

.method public setFarEndSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 93
    invoke-static {p1}, Lcom/android/phone/MediaHandler;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 94
    return-void
.end method

.method public setOnParamReadyListener(Lcom/android/phone/VideoCallPanel$ParamReadyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/VideoCallPanel$ParamReadyListener;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mMediaHandler:Lcom/android/phone/MediaHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/MediaHandler;->setMediaEventListener(Lcom/android/phone/MediaHandler$MediaEventListener;)V

    .line 302
    return-void
.end method

.method public startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/CameraHandler;->startPreview(Landroid/graphics/SurfaceTexture;)V

    .line 171
    return-void
.end method

.method public startOrientationListener()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mMediaHandler:Lcom/android/phone/MediaHandler;

    invoke-virtual {v0}, Lcom/android/phone/MediaHandler;->startOrientationListener()V

    .line 306
    return-void
.end method

.method public stopCameraPreview()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mCameraHandler:Lcom/android/phone/CameraHandler;

    invoke-virtual {v0}, Lcom/android/phone/CameraHandler;->stopPreview()V

    .line 186
    return-void
.end method

.method public stopOrientationListener()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/phone/VideoCallManager;->mMediaHandler:Lcom/android/phone/MediaHandler;

    invoke-virtual {v0}, Lcom/android/phone/MediaHandler;->stopOrientationListener()V

    .line 310
    return-void
.end method
