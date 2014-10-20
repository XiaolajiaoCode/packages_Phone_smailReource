.class public Lcom/android/phone/MSimPhoneInterfaceManager;
.super Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimPhoneInterfaceManager$1;,
        Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;


# instance fields
.field mApp:Lcom/android/phone/PhoneGlobals;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 286
    iput-object p2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 287
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 288
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;Lcom/android/phone/MSimPhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    .line 289
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->publish()V

    .line 290
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimPhoneInterfaceManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimPhoneInterfaceManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->silenceRingerInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimPhoneInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private answerRingingCallInternal()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 427
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 428
    .local v2, "hasRingingCall":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 429
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 430
    .local v0, "hasActiveCall":Z
    :goto_1
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 431
    .local v1, "hasHoldingCall":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 437
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 447
    .end local v0    # "hasActiveCall":Z
    .end local v1    # "hasHoldingCall":Z
    :cond_0
    :goto_3
    return-void

    .end local v2    # "hasRingingCall":Z
    :cond_1
    move v2, v4

    .line 427
    goto :goto_0

    .restart local v2    # "hasRingingCall":Z
    :cond_2
    move v0, v4

    .line 429
    goto :goto_1

    .restart local v0    # "hasActiveCall":Z
    :cond_3
    move v1, v4

    .line 430
    goto :goto_2

    .line 442
    .restart local v1    # "hasHoldingCall":Z
    :cond_4
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 797
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    const/4 v1, 0x0

    .line 803
    :goto_0
    return-object v1

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private enforceCallPermission()V
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 301
    invoke-static {}, Lcom/android/phone/MSimPhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/MSimPhoneInterfaceManager;
    .locals 4

    .prologue
    .line 273
    const-class v1, Lcom/android/phone/MSimPhoneInterfaceManager;

    monitor-enter v1

    .line 274
    :try_start_0
    sget-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    .line 279
    :goto_0
    sget-object v0, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 277
    :cond_0
    const-string v0, "MSimPhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimPhoneInterfaceManager;->sInstance:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 807
    const-string v0, "MSimPhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return-void
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 295
    const-string v0, "phone_msim"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 296
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;
    .param p3, "argument2"    # Ljava/lang/Object;

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 238
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_0
    new-instance v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .local v1, "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    monitor-enter v1

    .line 247
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 249
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    goto :goto_0

    .line 254
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    iget-object v2, v1, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 254
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .param p1, "command"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 266
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .locals 8
    .param p1, "specifyInitialDialpadState"    # Z
    .param p2, "initialDialpadState"    # Z

    .prologue
    const/4 v5, 0x0

    .line 350
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v6, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v5

    .line 354
    :cond_1
    iget-object v6, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 355
    .local v4, "sub":I
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimPhoneInterfaceManager;->isIdle(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 362
    .local v0, "callingId":J
    if-eqz p1, :cond_2

    .line 363
    :try_start_0
    invoke-static {p2}, Lcom/android/phone/PhoneGlobals;->createInCallIntent(Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 368
    .local v3, "intent":Landroid/content/Intent;
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5, v3}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    const/4 v5, 0x1

    goto :goto_0

    .line 365
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/phone/PhoneGlobals;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v3

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 369
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "MSimPhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showCallScreenInternal: transition to InCallScreen failed; intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 378
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private silenceRingerInternal()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const-string v0, "silenceRingerInternal: silencing..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public answerRingingCall(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 405
    const-string v0, "answerRingingCall..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 410
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequestAsync(I)V

    .line 411
    return-void
.end method

.method public call(Ljava/lang/String;I)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceCallPermission()V

    .line 337
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 342
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "subscription"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    iget-object v2, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public cancelMissedCallsNotification(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 676
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/MSimNotificationMgr;->cancelMissedCallNotification()V

    .line 677
    return-void
.end method

.method public dial(Ljava/lang/String;I)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "url":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 321
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_0

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    const-string v3, "subscription"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    iget-object v3, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 643
    const/4 v3, 0x3

    .line 644
    .local v3, "result":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 645
    .local v2, "numPhones":I
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    check-cast v5, Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/MSimPhoneGlobals;->getDataSubscription()I

    move-result v0

    .line 646
    .local v0, "dds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 647
    invoke-direct {p0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v4

    .line 648
    .local v4, "ret":I
    if-ne v1, v0, :cond_0

    .line 649
    const-string v5, "MSimPhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableApnType result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    move v3, v4

    .line 646
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v4    # "ret":I
    :cond_1
    return v3
.end method

.method public disableDataConnectivity()Z
    .locals 3

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 658
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 660
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 661
    const/4 v1, 0x1

    return v1
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 628
    const/4 v3, 0x3

    .line 629
    .local v3, "result":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 630
    .local v2, "numPhones":I
    iget-object v5, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    check-cast v5, Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/MSimPhoneGlobals;->getDataSubscription()I

    move-result v0

    .line 631
    .local v0, "dds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 632
    invoke-direct {p0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v4

    .line 633
    .local v4, "ret":I
    if-ne v1, v0, :cond_0

    .line 634
    move v3, v4

    .line 635
    const-string v5, "MSimPhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableApnType result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v4    # "ret":I
    :cond_1
    return v3
.end method

.method public enableDataConnectivity()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 619
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 620
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 622
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 623
    return v3
.end method

.method public endCall(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceCallPermission()V

    .line 401
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getActivePhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    return-object v4

    .line 752
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCallState(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 839
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    check-cast v0, Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneGlobals;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 899
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    check-cast v0, Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneGlobals;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getIccPin1RetryCount(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 977
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 885
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    check-cast v0, Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneGlobals;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 871
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 913
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 671
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    check-cast v0, Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneGlobals;->getDataSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isIdle(I)Z
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffhook(I)Z
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRadioOn(I)Z
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging(I)Z
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimPinEnabled(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceReadPermission()V

    .line 488
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    check-cast v0, Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimPhoneGlobals;->isSimPinEnabled(I)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 961
    const/16 v0, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setRadio(ZI)Z
    .locals 3
    .param p1, "turnOn"    # Z
    .param p2, "subscription"    # I

    .prologue
    const/4 v1, 0x1

    .line 610
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 611
    invoke-direct {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    move v0, v1

    :goto_0
    if-eq v0, p1, :cond_0

    .line 613
    invoke-virtual {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->toggleRadioOnOff(I)V

    .line 615
    :cond_0
    return v1

    .line 611
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-direct {p0, v0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 452
    const-string v0, "silenceRinger..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 457
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->sendRequestAsync(I)V

    .line 458
    return-void
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "subscription"    # I

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 493
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p2}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 494
    .local v0, "checkSimPin":Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->start()V

    .line 495
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subscription"    # I

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 500
    new-instance v0, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;

    invoke-direct {p0, p3}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 501
    .local v0, "checkSimPuk":Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->start()V

    .line 502
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimPhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public toggleRadioOnOff(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/phone/MSimPhoneInterfaceManager;->enforceModifyPermission()V

    .line 606
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->isRadioOn(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 607
    return-void

    .line 606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateServiceLocation(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 598
    return-void
.end method
