.class public Lcom/android/phone/CameraHandler;
.super Ljava/lang/Object;
.source "CameraHandler.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CameraHandler$CameraState;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/phone/CameraHandler;


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCameraState:Lcom/android/phone/CameraHandler$CameraState;

.field private mContext:Landroid/content/Context;

.field private mFrontCameraId:I

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v3, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    .line 60
    iput v3, p0, Lcom/android/phone/CameraHandler;->mBackCameraId:I

    iput v3, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    .line 62
    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    .line 94
    iput-object p1, p0, Lcom/android/phone/CameraHandler;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/android/phone/CameraHandler;->mNumberOfCameras:I

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of cameras supported is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CameraHandler;->mNumberOfCameras:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CameraHandler;->log(Ljava/lang/String;)V

    .line 97
    iget v1, p0, Lcom/android/phone/CameraHandler;->mNumberOfCameras:I

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/phone/CameraHandler;->mNumberOfCameras:I

    if-ge v0, v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    .line 100
    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 101
    iget v1, p0, Lcom/android/phone/CameraHandler;->mBackCameraId:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    .line 103
    iput v0, p0, Lcom/android/phone/CameraHandler;->mBackCameraId:I

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Back camera ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CameraHandler;->mBackCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CameraHandler;->log(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget v1, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 108
    iput v0, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Front camera ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CameraHandler;->log(Ljava/lang/String;)V

    .line 98
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/phone/CameraHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-class v1, Lcom/android/phone/CameraHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/CameraHandler;->mInstance:Lcom/android/phone/CameraHandler;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/phone/CameraHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/CameraHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/CameraHandler;->mInstance:Lcom/android/phone/CameraHandler;

    .line 86
    :cond_0
    sget-object v0, Lcom/android/phone/CameraHandler;->mInstance:Lcom/android/phone/CameraHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 397
    const-string v0, "VideoCallCameraManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 401
    const-string v0, "VideoCallCameraManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    if-ne v0, v1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close: Camera state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not the right camera state for this operation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 209
    const-string v0, "closing camera"

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->log(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 211
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 213
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    .line 216
    sget-object v0, Lcom/android/phone/CameraHandler$CameraState;->CAMERA_CLOSED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/android/phone/CameraHandler;->mBackCameraId:I

    return v0
.end method

.method public getCameraDirection()I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 343
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    iget v1, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method public getCameraState()Lcom/android/phone/CameraHandler$CameraState;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/android/phone/CameraHandler;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/phone/CameraHandler;->mNumberOfCameras:I

    return v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 391
    invoke-static {}, Lcom/android/phone/MediaHandler;->canSendPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p1}, Lcom/android/phone/MediaHandler;->sendPreviewFrame([B)V

    .line 394
    :cond_0
    return-void
.end method

.method public declared-synchronized open(I)Z
    .locals 4
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 135
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 136
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "DevicePolicyManager not available"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 139
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Camera is disabled"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    if-eq v2, p1, :cond_2

    .line 144
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 145
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    .line 146
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    .line 150
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opening camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CameraHandler;->log(Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    .line 152
    iput p1, p0, Lcom/android/phone/CameraHandler;->mCameraId:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CameraHandler;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 167
    :goto_0
    sget-object v2, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STOPPED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to connect Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 155
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    :try_start_6
    iget-object v2, p0, Lcom/android/phone/CameraHandler;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v2}, Lcom/android/phone/CameraHandler;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "reconnect failed."

    invoke-direct {p0, v2}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraParameters mCameraDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "parameters ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->log(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iput-object p1, p0, Lcom/android/phone/CameraHandler;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 261
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 300
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisplayOrientation()V
    .locals 7

    .prologue
    .line 352
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 355
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v0, 0x0

    .line 356
    .local v0, "degrees":I
    const/4 v3, 0x0

    .line 359
    .local v3, "rotation":I
    iget-object v5, p0, Lcom/android/phone/CameraHandler;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 361
    .local v4, "wm":Landroid/view/WindowManager;
    if-nez v4, :cond_0

    .line 362
    const-string v5, "WindowManager not available"

    invoke-direct {p0, v5}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 367
    packed-switch v3, :pswitch_data_0

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDisplayOrientation: Unexpected rotation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 376
    :goto_1
    iget v5, p0, Lcom/android/phone/CameraHandler;->mCameraId:I

    invoke-static {v5, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 377
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 378
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v5, v0

    rem-int/lit16 v2, v5, 0x168

    .line 379
    .local v2, "result":I
    rsub-int v5, v2, 0x168

    rem-int/lit16 v2, v5, 0x168

    .line 383
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 368
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 369
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 370
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    .line 371
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 381
    :cond_1
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v0

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v2, v5, 0x168

    .restart local v2    # "result":I
    goto :goto_2

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "mSurfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STOPPED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreview: Camera state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not the right camera state for this operation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "starting preview"

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->log(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/CameraHandler;->setDisplayOrientation()V

    .line 193
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 194
    sget-object v0, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STARTED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    sget-object v1, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STARTED:Lcom/android/phone/CameraHandler$CameraState;

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPreview: Camera state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not the right camera state for this operation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->loge(Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "stopping preview"

    invoke-direct {p0, v0}, Lcom/android/phone/CameraHandler;->log(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 232
    iget-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 234
    :cond_1
    sget-object v0, Lcom/android/phone/CameraHandler$CameraState;->PREVIEW_STOPPED:Lcom/android/phone/CameraHandler$CameraState;

    iput-object v0, p0, Lcom/android/phone/CameraHandler;->mCameraState:Lcom/android/phone/CameraHandler$CameraState;

    goto :goto_0
.end method
