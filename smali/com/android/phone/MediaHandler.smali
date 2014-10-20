.class public Lcom/android/phone/MediaHandler;
.super Landroid/os/Handler;
.source "MediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MediaHandler$MediaEventListener;
    }
.end annotation


# static fields
.field private static ORIENTATION_ANGLE_0:I

.field private static ORIENTATION_ANGLE_180:I

.field private static ORIENTATION_ANGLE_270:I

.field private static ORIENTATION_ANGLE_90:I

.field private static ORIENTATION_MODE_THRESHOLD:I

.field private static mInitCalledFlag:Z

.field private static mIsReadyToReceivePreview:Z

.field private static mNegotiatedFps:S

.field private static mNegotiatedHeight:I

.field private static mNegotiatedWidth:I

.field private static mSurface:Landroid/graphics/SurfaceTexture;

.field private static mUIOrientationMode:I


# instance fields
.field context:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mMediaEventListener:Lcom/android/phone/MediaHandler$MediaEventListener;

.field mOrientationEventListener:Landroid/view/OrientationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 51
    sput-boolean v1, Lcom/android/phone/MediaHandler;->mInitCalledFlag:Z

    .line 68
    sput v1, Lcom/android/phone/MediaHandler;->ORIENTATION_ANGLE_0:I

    .line 69
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/MediaHandler;->ORIENTATION_ANGLE_90:I

    .line 70
    sput v2, Lcom/android/phone/MediaHandler;->ORIENTATION_ANGLE_180:I

    .line 71
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/MediaHandler;->ORIENTATION_ANGLE_270:I

    .line 72
    const/16 v0, 0x2d

    sput v0, Lcom/android/phone/MediaHandler;->ORIENTATION_MODE_THRESHOLD:I

    .line 101
    const/16 v0, 0xf0

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    .line 102
    const/16 v0, 0x140

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    .line 103
    sput v2, Lcom/android/phone/MediaHandler;->mUIOrientationMode:I

    .line 104
    const/16 v0, 0x14

    sput-short v0, Lcom/android/phone/MediaHandler;->mNegotiatedFps:S

    .line 108
    sput-boolean v1, Lcom/android/phone/MediaHandler;->mIsReadyToReceivePreview:Z

    .line 116
    const-string v0, "vt_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MediaHandler;->mCurrentOrientation:I

    .line 80
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MediaHandler;->context:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/android/phone/MediaHandler$1;

    iget-object v1, p0, Lcom/android/phone/MediaHandler;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/MediaHandler$1;-><init>(Lcom/android/phone/MediaHandler;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/MediaHandler;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MediaHandler;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MediaHandler;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/phone/MediaHandler;->calculateDeviceOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/MediaHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MediaHandler;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/phone/MediaHandler;->detectOrientationChangedAndSendCvo(I)V

    return-void
.end method

.method private calculateDeviceOrientation(I)I
    .locals 2
    .param p1, "angle"    # I

    .prologue
    .line 185
    sget v0, Lcom/android/phone/MediaHandler;->ORIENTATION_ANGLE_0:I

    .line 186
    .local v0, "newOrientation":I
    if-ltz p1, :cond_0

    sget v1, Lcom/android/phone/MediaHandler;->ORIENTATION_MODE_THRESHOLD:I

    add-int/lit8 v1, v1, 0x0

    if-lt p1, v1, :cond_1

    :cond_0
    sget v1, Lcom/android/phone/MediaHandler;->ORIENTATION_MODE_THRESHOLD:I

    rsub-int v1, v1, 0x168

    if-lt p1, v1, :cond_3

    const/16 v1, 0x168

    if-ge p1, v1, :cond_3

    .line 190
    :cond_1
    sget v0, Lcom/android/phone/MediaHandler;->ORIENTATION_ANGLE_0:I

    .line 201
    :cond_2
    :goto_0
    return v0

    .line 191
    :cond_3
    sget v1, Lcom/android/phone/MediaHandler;->ORIENTATION_MODE_THRESHOLD:I

    rsub-int/lit8 v1, v1, 0x5a

    if-lt p1, v1, :cond_4

    sget v1, Lcom/android/phone/MediaHandler;->ORIENTATION_MODE_THRESHOLD:I

    add-int/lit8 v1, v1, 0x5a

    if-ge p1, v1, :cond_4

    .line 193
    sget v0, Lcom/android/phone/MediaHandler;->ORIENTATION_ANGLE_90:I

    goto :goto_0

    .line 194
    :cond_4
    sget v1, Lcom/android/phone/MediaHandler;->ORIENTATION_MODE_THRESHOLD:I

    rsub-int v1, v1, 0xb4

    if-lt p1, v1, :cond_5

    sget v1, Lcom/android/phone/MediaHandler;->ORIENTATION_MODE_THRESHOLD:I

    add-int/lit16 v1, v1, 0xb4

    if-ge p1, v1, :cond_5

    .line 196
    sget v0, Lcom/android/phone/MediaHandler;->ORIENTATION_ANGLE_180:I

    goto :goto_0

    .line 197
    :cond_5
    sget v1, Lcom/android/phone/MediaHandler;->ORIENTATION_MODE_THRESHOLD:I

    rsub-int v1, v1, 0x10e

    if-lt p1, v1, :cond_2

    sget v1, Lcom/android/phone/MediaHandler;->ORIENTATION_MODE_THRESHOLD:I

    add-int/lit16 v1, v1, 0x10e

    if-ge p1, v1, :cond_2

    .line 199
    sget v0, Lcom/android/phone/MediaHandler;->ORIENTATION_ANGLE_270:I

    goto :goto_0
.end method

.method public static declared-synchronized canSendPreview()Z
    .locals 2

    .prologue
    .line 287
    const-class v0, Lcom/android/phone/MediaHandler;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/phone/MediaHandler;->mIsReadyToReceivePreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static deInit()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "deInit called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeDeInit()V

    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/MediaHandler;->mInitCalledFlag:Z

    .line 160
    return-void
.end method

.method private detectOrientationChangedAndSendCvo(I)V
    .locals 1
    .param p1, "newOrientation"    # I

    .prologue
    .line 211
    iget v0, p0, Lcom/android/phone/MediaHandler;->mCurrentOrientation:I

    if-eq p1, v0, :cond_0

    .line 212
    iput p1, p0, Lcom/android/phone/MediaHandler;->mCurrentOrientation:I

    .line 213
    iget v0, p0, Lcom/android/phone/MediaHandler;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/android/phone/MediaHandler;->sendCvoInfo(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public static getNegotiatedFPS()S
    .locals 3

    .prologue
    .line 258
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negotiated FPS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-short v2, Lcom/android/phone/MediaHandler;->mNegotiatedFps:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-short v0, Lcom/android/phone/MediaHandler;->mNegotiatedFps:S

    return v0
.end method

.method public static getNegotiatedHeight()I
    .locals 3

    .prologue
    .line 266
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negotiated Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget v0, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    return v0
.end method

.method public static getNegotiatedWidth()I
    .locals 3

    .prologue
    .line 274
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negotiated Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget v0, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    return v0
.end method

.method private static native nativeDeInit()V
.end method

.method private static native nativeGetNegotiatedFPS()S
.end method

.method private static native nativeGetNegotiatedHeight()I
.end method

.method private static native nativeGetNegotiatedWidth()I
.end method

.method private static native nativeGetUIOrientationMode()I
.end method

.method private static native nativeHandleRawFrame([B)V
.end method

.method private static native nativeInit()I
.end method

.method private static native nativeRegisterForMediaEvents(Lcom/android/phone/MediaHandler;)V
.end method

.method private static native nativeSetDeviceOrientation(I)V
.end method

.method private static native nativeSetSurface(Landroid/graphics/SurfaceTexture;)I
.end method

.method private processUIOrientationMode()V
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/phone/MediaHandler;->isCvoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/phone/MediaHandler;->startOrientationListener()V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MediaHandler;->stopOrientationListener()V

    goto :goto_0
.end method

.method private static registerForMediaEvents(Lcom/android/phone/MediaHandler;)V
    .locals 2
    .param p0, "instance"    # Lcom/android/phone/MediaHandler;

    .prologue
    .line 300
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "Registering for Media Callback Events"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {p0}, Lcom/android/phone/MediaHandler;->nativeRegisterForMediaEvents(Lcom/android/phone/MediaHandler;)V

    .line 302
    return-void
.end method

.method private sendCvoInfo(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 218
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCvoInfo orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1}, Lcom/android/phone/MediaHandler;->nativeSetDeviceOrientation(I)V

    .line 220
    return-void
.end method

.method public static sendPreviewFrame([B)V
    .locals 0
    .param p0, "frame"    # [B

    .prologue
    .line 228
    invoke-static {p0}, Lcom/android/phone/MediaHandler;->nativeHandleRawFrame([B)V

    .line 229
    return-void
.end method

.method public static declared-synchronized setIsReadyToReceivePreview(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 291
    const-class v1, Lcom/android/phone/MediaHandler;

    monitor-enter v1

    :try_start_0
    const-string v0, "VideoCall_MediaHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsReadyToReceivePreview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sput-boolean p0, Lcom/android/phone/MediaHandler;->mIsReadyToReceivePreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v1

    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setSurface()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "setSurface()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Lcom/android/phone/MediaHandler;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 248
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "sSurface is null. So not passing it down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    sget-object v0, Lcom/android/phone/MediaHandler;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/android/phone/MediaHandler;->nativeSetSurface(Landroid/graphics/SurfaceTexture;)I

    goto :goto_0
.end method

.method public static setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p0, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 236
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurface(SurfaceTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sput-object p0, Lcom/android/phone/MediaHandler;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 238
    invoke-static {p0}, Lcom/android/phone/MediaHandler;->nativeSetSurface(Landroid/graphics/SurfaceTexture;)I

    .line 239
    return-void
.end method


# virtual methods
.method public init()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 127
    sget-boolean v2, Lcom/android/phone/MediaHandler;->mInitCalledFlag:Z

    if-nez v2, :cond_0

    .line 129
    sput-boolean v1, Lcom/android/phone/MediaHandler;->mIsReadyToReceivePreview:Z

    .line 130
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeInit()I

    move-result v0

    .line 131
    .local v0, "error":I
    const-string v2, "VideoCall_MediaHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init called error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    packed-switch v0, :pswitch_data_0

    .line 150
    .end local v0    # "error":I
    :goto_0
    return v0

    .line 134
    .restart local v0    # "error":I
    :pswitch_0
    sput-boolean v5, Lcom/android/phone/MediaHandler;->mInitCalledFlag:Z

    .line 135
    invoke-static {p0}, Lcom/android/phone/MediaHandler;->registerForMediaEvents(Lcom/android/phone/MediaHandler;)V

    goto :goto_0

    .line 138
    :pswitch_1
    sput-boolean v1, Lcom/android/phone/MediaHandler;->mInitCalledFlag:Z

    goto :goto_0

    .line 141
    :pswitch_2
    sput-boolean v5, Lcom/android/phone/MediaHandler;->mInitCalledFlag:Z

    .line 142
    const-string v1, "VideoCall_MediaHandler"

    const-string v2, "Dpl init is called multiple times"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    goto :goto_0

    .end local v0    # "error":I
    :cond_0
    move v0, v1

    .line 150
    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCvoModeEnabled()Z
    .locals 2

    .prologue
    .line 348
    sget v0, Lcom/android/phone/MediaHandler;->mUIOrientationMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMediaEvent(I)V
    .locals 3
    .param p1, "eventId"    # I

    .prologue
    .line 312
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaEvent eventId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    packed-switch p1, :pswitch_data_0

    .line 334
    :cond_0
    :goto_0
    :pswitch_0
    const-string v0, "VideoCall_MediaHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown event id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    :goto_1
    return-void

    .line 315
    :pswitch_1
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "Received PARAM_READY_EVT. Updating negotiated values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeGetNegotiatedHeight()I

    move-result v0

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedHeight:I

    .line 317
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeGetNegotiatedWidth()I

    move-result v0

    sput v0, Lcom/android/phone/MediaHandler;->mNegotiatedWidth:I

    .line 318
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeGetNegotiatedFPS()S

    move-result v0

    sput-short v0, Lcom/android/phone/MediaHandler;->mNegotiatedFps:S

    .line 319
    iget-object v0, p0, Lcom/android/phone/MediaHandler;->mMediaEventListener:Lcom/android/phone/MediaHandler$MediaEventListener;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/phone/MediaHandler;->mMediaEventListener:Lcom/android/phone/MediaHandler$MediaEventListener;

    invoke-interface {v0}, Lcom/android/phone/MediaHandler$MediaEventListener;->onParamReadyEvent()V

    goto :goto_1

    .line 324
    :pswitch_2
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "Received START_READY_EVT. Camera frames can be sent now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/MediaHandler;->setIsReadyToReceivePreview(Z)V

    goto :goto_1

    .line 328
    :pswitch_3
    invoke-static {}, Lcom/android/phone/MediaHandler;->nativeGetUIOrientationMode()I

    move-result v0

    sput v0, Lcom/android/phone/MediaHandler;->mUIOrientationMode:I

    .line 329
    invoke-direct {p0}, Lcom/android/phone/MediaHandler;->processUIOrientationMode()V

    .line 330
    iget-object v0, p0, Lcom/android/phone/MediaHandler;->mMediaEventListener:Lcom/android/phone/MediaHandler$MediaEventListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/phone/MediaHandler;->mMediaEventListener:Lcom/android/phone/MediaHandler$MediaEventListener;

    invoke-interface {v0}, Lcom/android/phone/MediaHandler$MediaEventListener;->onDisplayModeEvent()V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setMediaEventListener(Lcom/android/phone/MediaHandler$MediaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/MediaHandler$MediaEventListener;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/phone/MediaHandler;->mMediaEventListener:Lcom/android/phone/MediaHandler$MediaEventListener;

    .line 306
    return-void
.end method

.method public startOrientationListener()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "startOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/phone/MediaHandler;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/phone/MediaHandler;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "Cannot detect orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopOrientationListener()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "VideoCall_MediaHandler"

    const-string v1, "stopOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/phone/MediaHandler;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 175
    return-void
.end method
