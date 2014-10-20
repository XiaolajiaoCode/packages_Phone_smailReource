.class public Lcom/android/phone/VideoCallPanel;
.super Landroid/widget/RelativeLayout;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VideoCallPanel$1;,
        Lcom/android/phone/VideoCallPanel$ParamReadyListener;,
        Lcom/android/phone/VideoCallPanel$ZoomChangeListener;
    }
.end annotation


# instance fields
.field private mBackCameraId:I

.field private mCameraId:I

.field private mCameraNeeded:Z

.field private mCameraPicker:Landroid/widget/ImageView;

.field private mCameraPreview:Landroid/view/TextureView;

.field private mCameraSurface:Landroid/graphics/SurfaceTexture;

.field private mContext:Landroid/content/Context;

.field private mFarEndSurface:Landroid/graphics/SurfaceTexture;

.field private mFarEndView:Landroid/view/TextureView;

.field private mFrontCameraId:I

.field private mIsMediaLoopback:Z

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPreviewSize:Landroid/hardware/Camera$Size;

.field private mVideoCallManager:Lcom/android/phone/VideoCallManager;

.field private mVideoCallPanel:Landroid/view/ViewGroup;

.field private mZoomControl:Lcom/android/phone/ZoomControlBar;

.field private mZoomMax:I

.field private mZoomValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 87
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraNeeded:Z

    .line 134
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraNeeded:Z

    .line 139
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraNeeded:Z

    .line 144
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VideoCallPanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/VideoCallPanel;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->onZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/VideoCallPanel;)Lcom/android/phone/VideoCallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/VideoCallPanel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/VideoCallPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/VideoCallPanel;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCameraParams()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/VideoCallPanel;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/VideoCallPanel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/VideoCallPanel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/VideoCallPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private chooseCamera(Z)V
    .locals 3
    .param p1, "chooseFrontCamera"    # Z

    .prologue
    const/4 v2, -0x1

    .line 624
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_0

    .line 625
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    .line 632
    :goto_0
    return-void

    .line 626
    :cond_0
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    if-eq v0, v2, :cond_1

    .line 627
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    goto :goto_0

    .line 629
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chooseCamera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Both camera ids unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    .line 630
    iput v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->closeCamera()V

    .line 302
    return-void
.end method

.method private initializeCamera()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing camera id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 247
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 248
    const-string v0, "initializeCamera: Not initializing camera as mCameraId is unknown"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->openCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeZoom()V

    .line 257
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCameraParams()V

    .line 259
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->startPreview()V

    goto :goto_0
.end method

.method private initializeCameraParams()V
    .locals 4

    .prologue
    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 456
    iget-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0xb0

    const/16 v3, 0x90

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 475
    :goto_1
    return-void

    .line 461
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Preview Sizes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Preview Size directly with negotiated Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNegotiatedHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " negotiated width= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNegotiatedWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2}, Lcom/android/phone/VideoCallManager;->getNegotiatedWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v3}, Lcom/android/phone/VideoCallManager;->getNegotiatedHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 467
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->setFpsRange()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting Camera preview size/fps exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Preview sizes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initializeZoom()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 416
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setVisibility(I)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    .line 428
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setZoomMax(I)V

    .line 429
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setZoomIndex(I)V

    .line 430
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    new-instance v1, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/VideoCallPanel$ZoomChangeListener;-><init>(Lcom/android/phone/VideoCallPanel;Lcom/android/phone/VideoCallPanel$1;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/ZoomControlBar;->setOnZoomChangeListener(Lcom/android/phone/ZoomControl$OnZoomChangedListener;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 651
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 655
    const-string v0, "VideoCallPanel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void
.end method

.method private onZoomValueChanged(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    .line 442
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 444
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 446
    :cond_0
    return-void
.end method

.method private openCamera(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 277
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v2, p1}, Lcom/android/phone/VideoCallManager;->openCamera(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 280
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 278
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera device, error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resizeCameraPreview(I)V
    .locals 4
    .param p1, "targetSize"    # I

    .prologue
    .line 568
    const-string v1, "resizeCameraPreview"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    div-int/lit8 v2, p1, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/VideoCallManager;->getCameraPreviewSize(IZ)Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 572
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_0

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera view width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 575
    .local v0, "cameraPreivewLp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 576
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 577
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    .end local v0    # "cameraPreivewLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method private resizeFarEndView(II)V
    .locals 3
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    .line 589
    const-string v1, "resizeFarEndView"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Videocall pandel width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 593
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 594
    .local v0, "farEndViewLp":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 595
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 596
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    return-void
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/android/phone/VideoCallManager;->startCameraPreview(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while setting preview texture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->stopCameraPreview()V

    .line 310
    return-void
.end method

.method private switchCamera(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 605
    iput p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraId:I

    .line 608
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 610
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isCameraInitNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 617
    :cond_1
    return-void
.end method


# virtual methods
.method public isCameraInitNeeded()Z
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraNeeded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCvoModeEnabled()Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->isCvoModeEnabled()Z

    move-result v0

    return v0
.end method

.method public onCallInitiating(I)V
    .locals 3
    .param p1, "callType"    # I

    .prologue
    const/4 v2, 0x1

    .line 199
    const-string v1, "onCallInitiating"

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x1

    .line 203
    .local v0, "chooseFrontCamera":Z
    if-ne p1, v2, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 207
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->chooseCamera(Z)V

    .line 209
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    .line 210
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/VideoCallPanel;->mCameraNeeded:Z

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraNeeded:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getCameraDirection()I

    move-result v0

    .line 396
    .local v0, "direction":I
    packed-switch v0, :pswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_0

    .line 401
    :pswitch_1
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_0

    .line 404
    :pswitch_2
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->switchCamera(I)V

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 152
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFinishInflate(this = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 157
    const-string v1, "net.lte.VT_LOOPBACK_ENABLE"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 158
    .local v0, "property":I
    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is Media running in loopback mode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/phone/VideoCallPanel;->mIsMediaLoopback:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 162
    const v1, 0x7f08006f

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallPanel:Landroid/view/ViewGroup;

    .line 163
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ZoomControlBar;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mZoomControl:Lcom/android/phone/ZoomControlBar;

    .line 164
    const v1, 0x7f080071

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    .line 165
    const v1, 0x7f080072

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    .line 166
    const v1, 0x7f080074

    invoke-virtual {p0, v1}, Lcom/android/phone/VideoCallPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    .line 169
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 171
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/VideoCallManager;->getInstance(Landroid/content/Context;)Lcom/android/phone/VideoCallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    .line 175
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getBackCameraId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mBackCameraId:I

    .line 176
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getFrontCameraId()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mFrontCameraId:I

    .line 177
    invoke-direct {p0, v2}, Lcom/android/phone/VideoCallPanel;->chooseCamera(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v1}, Lcom/android/phone/VideoCallManager;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VideoCallPanel;->mNumberOfCameras:I

    .line 181
    iget v1, p0, Lcom/android/phone/VideoCallPanel;->mNumberOfCameras:I

    if-le v1, v2, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    :goto_1
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    new-instance v2, Lcom/android/phone/VideoCallPanel$ParamReadyListener;

    invoke-direct {v2, p0}, Lcom/android/phone/VideoCallPanel$ParamReadyListener;-><init>(Lcom/android/phone/VideoCallPanel;)V

    invoke-virtual {v1, v2}, Lcom/android/phone/VideoCallManager;->setOnParamReadyListener(Lcom/android/phone/VideoCallPanel$ParamReadyListener;)V

    .line 189
    return-void

    :cond_0
    move v1, v3

    .line 158
    goto/16 :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPicker:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 239
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "xNew"    # I
    .param p2, "yNew"    # I
    .param p3, "xOld"    # I
    .param p4, "yOld"    # I

    .prologue
    .line 223
    const-string v0, "onSizeChanged"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video Panel width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, p2}, Lcom/android/phone/VideoCallPanel;->resizeCameraPreview(I)V

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VideoCallPanel;->resizeFarEndView(II)V

    .line 229
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const-string v0, "Camera surface texture created"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 318
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 319
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isCameraInitNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setDisplay(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "Video surface texture created"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 330
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const-string v0, "CameraPreview surface texture destroyed"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 339
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 340
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraSurface:Landroid/graphics/SurfaceTexture;

    .line 346
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "FarEndView surface texture destroyed"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 343
    iput-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndSurface:Landroid/graphics/SurfaceTexture;

    .line 344
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 357
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 352
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 364
    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 381
    :sswitch_0
    const-string v0, "VideoCallPanel View is VISIBLE"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isCameraInitNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    goto :goto_0

    .line 372
    :sswitch_1
    const-string v0, "VideoCallPanel View is GONE or INVISIBLE"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 377
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    goto :goto_0

    .line 368
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCameraNeeded(Z)V
    .locals 0
    .param p1, "mCameraNeeded"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/android/phone/VideoCallPanel;->mCameraNeeded:Z

    .line 193
    return-void
.end method

.method setFpsRange()V
    .locals 10

    .prologue
    .line 525
    iget-object v7, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v7}, Lcom/android/phone/VideoCallManager;->getNegotiatedFPS()I

    move-result v7

    mul-int/lit16 v6, v7, 0x3e8

    .line 526
    .local v6, "negotiatedFPS":I
    iget-object v7, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 529
    .local v4, "fpsRangeList":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v1, 0x0

    .line 530
    .local v1, "bestFpsLow":I
    const/4 v0, 0x0

    .line 532
    .local v0, "bestFpsHigh":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 533
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v8, 0x1

    aget v2, v7, v8

    .line 534
    .local v2, "currFpsHigh":I
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v8, 0x0

    aget v3, v7, v8

    .line 536
    .local v3, "currFpsLow":I
    const-string v7, "VideoCallPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Supported FPS range = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    if-eq v2, v3, :cond_2

    if-gt v3, v6, :cond_2

    if-gt v6, v2, :cond_2

    .line 543
    move v1, v3

    .line 544
    move v0, v6

    .line 549
    .end local v2    # "currFpsHigh":I
    .end local v3    # "currFpsLow":I
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 551
    :cond_1
    const-string v7, "VideoCallPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v7, p0, Lcom/android/phone/VideoCallPanel;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 559
    :goto_1
    return-void

    .line 532
    .restart local v2    # "currFpsHigh":I
    .restart local v3    # "currFpsLow":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 556
    .end local v2    # "currFpsHigh":I
    .end local v3    # "currFpsLow":I
    :cond_3
    const-string v7, "VideoCallPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Best FPS range for the negotiated FPS of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPanelElementsVisibility(I)V
    .locals 3
    .param p1, "callType"    # I

    .prologue
    const/4 v2, 0x0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPanelElementsVisibility: callType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 479
    packed-switch p1, :pswitch_data_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPanelElementsVisibility: Default: VideoCallPanel is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCameraPreview is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mFarEndView is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 481
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 483
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isCameraInitNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 486
    :cond_0
    const-string v0, "setPanelElementsVisibility: VT: mCameraPreview:VISIBLE, mFarEndView:VISIBLE"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 490
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isCameraInitNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->initializeCamera()V

    .line 494
    :cond_1
    const-string v0, "setPanelElementsVisibility VT_TX: mCameraPreview:VISIBLE"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mFarEndView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->getCameraState()Lcom/android/phone/CameraHandler$CameraState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_2

    .line 501
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->stopPreview()V

    .line 502
    invoke-direct {p0}, Lcom/android/phone/VideoCallPanel;->closeCamera()V

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mCameraPreview:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 505
    const-string v0, "setPanelElementsVisibility VT_RX: mCameraPreview:GONE mFarEndView:VISIBLE"

    invoke-direct {p0, v0}, Lcom/android/phone/VideoCallPanel;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startOrientationListener()V
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isCvoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->startOrientationListener()V

    .line 638
    :cond_0
    return-void
.end method

.method public stopOrientationListener()V
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/phone/VideoCallPanel;->isCvoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel;->mVideoCallManager:Lcom/android/phone/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/phone/VideoCallManager;->stopOrientationListener()V

    .line 644
    :cond_0
    return-void
.end method
