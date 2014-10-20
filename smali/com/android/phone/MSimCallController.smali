.class public Lcom/android/phone/MSimCallController;
.super Lcom/android/phone/CallController;
.source "MSimCallController.java"


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/phone/CallLogger;)V
    .locals 2
    .param p1, "app"    # Lcom/android/phone/MSimPhoneGlobals;
    .param p2, "callLogger"    # Lcom/android/phone/CallLogger;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallController constructor: app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/MSimCallController;->log(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static init(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallController;
    .locals 4

    .prologue
    .line 47
    const-class v1, Lcom/android/phone/MSimCallController;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/android/phone/MSimCallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/phone/MSimCallController;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MSimCallController;-><init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/phone/CallLogger;)V

    sput-object v0, Lcom/android/phone/MSimCallController;->sInstance:Lcom/android/phone/CallController;

    .line 53
    :goto_0
    sget-object v0, Lcom/android/phone/MSimCallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    .line 51
    :cond_0
    const-string v0, "MSimCallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string v0, "MSimCallController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method


# virtual methods
.method protected placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCallInternal()...  intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MSimCallController;->log(Ljava/lang/String;)V

    .line 85
    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getVoiceSubscription()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, "sub":I
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setActiveSubscription(I)V

    .line 88
    invoke-super {p0, p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    return-object v1
.end method
