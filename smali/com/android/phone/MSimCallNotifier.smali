.class public Lcom/android/phone/MSimCallNotifier;
.super Lcom/android/phone/CallNotifier;
.source "MSimCallNotifier.java"


# direct methods
.method protected constructor <init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V
    .locals 0
    .param p1, "app"    # Lcom/android/phone/MSimPhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "ringer"    # Lcom/android/phone/Ringer;
    .param p4, "callLogger"    # Lcom/android/phone/CallLogger;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MSimCallNotifier;ZLcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimCallNotifier;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimCallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 4
    .param p1, "sub"    # I

    .prologue
    .line 181
    const-string v1, "MSimCallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneStateListener: SUBSCRIPTION == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/android/phone/MSimCallNotifier$1;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/MSimCallNotifier$1;-><init>(Lcom/android/phone/MSimCallNotifier;I)V

    .line 196
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method static init(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallNotifier;
    .locals 4

    .prologue
    .line 72
    const-class v1, Lcom/android/phone/MSimCallNotifier;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/phone/MSimCallNotifier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/MSimCallNotifier;-><init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V

    sput-object v0, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 78
    :goto_0
    sget-object v0, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    check-cast v0, Lcom/android/phone/MSimCallNotifier;

    monitor-exit v1

    return-object v0

    .line 76
    :cond_0
    const-string v0, "MSimCallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimCallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 817
    const-string v0, "MSimCallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void
.end method

.method private onMwiChanged(ZLcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 128
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_0

    .line 134
    const-string v0, "MSimCallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimNotificationMgr;->updateMwi(ZLcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method


# virtual methods
.method protected getXDivertStatus()Z
    .locals 5

    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "xdivert_status_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 166
    .local v1, "status":Z
    const-string v2, "MSimCallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getXDivertStatus status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 102
    invoke-super {p0, p1}, Lcom/android/phone/CallNotifier;->handleMessage(Landroid/os/Message;)V

    .line 104
    :goto_0
    return-void

    .line 92
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 93
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/phone/MSimCallNotifier;->onMwiChanged(ZLcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 97
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :sswitch_1
    const-string v2, "PHONE_ACTIVE_SUBSCRIPTION_CHANGE..."

    invoke-direct {p0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 98
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 99
    .local v1, "r":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Change in subscription "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x36 -> :sswitch_1
    .end sparse-switch
.end method

.method protected listen()V
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v3, "phone_msim"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/MSimTelephonyManager;

    .line 116
    .local v1, "telephonyManager":Landroid/telephony/MSimTelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 117
    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallNotifier;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method protected onCfiChanged(ZI)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "subscription"    # I

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/MSimNotificationMgr;->updateCfi(ZI)V

    .line 154
    return-void
.end method

.method protected onCustomRingQueryComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "isQueryExecutionTimeExpired":Z
    const/4 v2, 0x0

    .line 482
    .local v2, "stateRinging":Z
    const/4 v3, 0x0

    .line 483
    .local v3, "subscription":I
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 484
    :try_start_0
    iget v4, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 485
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 486
    const/4 v1, 0x1

    .line 488
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    if-eqz v1, :cond_1

    .line 492
    const-string v4, "MSimCallNotifier"

    const-string v5, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const v4, 0x112a0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 496
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 497
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_4

    .line 498
    const/4 v2, 0x1

    .line 499
    move v3, v0

    .line 504
    :cond_2
    if-eqz v2, :cond_3

    .line 506
    const-string v4, "RINGING... (onCustomRingQueryComplete)"

    invoke-direct {p0, v4}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 507
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v4, v3}, Lcom/android/phone/Ringer;->ring(I)V

    .line 510
    const-string v4, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v4}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0, v3}, Lcom/android/phone/MSimCallNotifier;->showIncomingCall(I)V

    .line 515
    :cond_3
    return-void

    .line 488
    .end local v0    # "i":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 496
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onDisconnect(Landroid/os/AsyncResult;)V
    .locals 19
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect()...  CallManager state: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->wakeUpScreenWithForce()V

    .line 522
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 523
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 524
    .local v9, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v17

    .line 525
    .local v17, "subscription":I
    if-eqz v9, :cond_f

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnect: cause = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", incoming = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", date = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", subscription = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 534
    :goto_0
    const/4 v8, 0x0

    .line 535
    .local v8, "autoretrySetting":I
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "call_auto_retry"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 542
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/phone/MSimCallNotifier;->showCallDuration(Lcom/android/internal/telephony/Connection;)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallNotifier;->stopSignalInfoTone()V

    .line 547
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 553
    const/16 v2, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimCallNotifier;->removeMessages(I)V

    .line 554
    const/16 v2, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimCallNotifier;->removeMessages(I)V

    .line 570
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v16

    .line 571
    .local v16, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_11

    .line 572
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 575
    const-string v2, "cancelCallInProgressNotifications()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 587
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v2, :cond_2

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 589
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 593
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 594
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 596
    const-string v2, "onDisconnect: this was an OTASP call!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->handleOtaspDisconnect()V

    .line 603
    .end local v4    # "number":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    .line 606
    .local v18, "toneToPlay":I
    if-eqz v9, :cond_4

    .line 607
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v10

    .line 608
    .local v10, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_12

    .line 609
    const-string v2, "- need to play BUSY tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 610
    const/16 v18, 0x2

    .line 647
    .end local v10    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_4
    :goto_2
    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v5, :cond_6

    if-eqz v9, :cond_6

    .line 650
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v10

    .line 651
    .restart local v10    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v10, v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_6

    .line 653
    :cond_5
    const-string v2, "- need to play CALL_ENDED tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 654
    const/16 v18, 0x4

    .line 655
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 660
    .end local v10    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v5, :cond_8

    .line 663
    if-nez v18, :cond_7

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimCallNotifier;->resetAudioStateAfterDisconnect()V

    .line 667
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 670
    :cond_8
    if-eqz v9, :cond_e

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v2, v9}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;)V

    .line 676
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 677
    .local v13, "groupNumber":Ljava/lang/String;
    if-eqz v13, :cond_9

    const-string v2, "&"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 678
    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->modifyForGroupNumberCases(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calllog: processed groupNumber = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 682
    :cond_9
    move-object v4, v13

    .line 684
    .restart local v4    # "number":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 685
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v4, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    .line 688
    .local v14, "isEmergencyNumber":Z
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_a

    .line 689
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v2, :cond_a

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v2, :cond_a

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V

    .line 697
    :cond_a
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v11

    .line 698
    .local v11, "date":J
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v10

    .line 699
    .restart local v10    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_1b

    const/4 v15, 0x1

    .line 702
    .local v15, "missedCall":Z
    :goto_3
    if-eqz v15, :cond_b

    .line 706
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11, v12}, Lcom/android/phone/MSimCallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 713
    :cond_b
    if-eqz v18, :cond_c

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- starting post-disconnect tone ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 715
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 727
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_e

    :cond_d
    if-nez v14, :cond_e

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v10, v2, :cond_e

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v10, v2, :cond_e

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v10, v2, :cond_e

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v10, v2, :cond_e

    .line 734
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v2, :cond_1d

    .line 735
    const/4 v2, 0x1

    if-ne v8, v2, :cond_1c

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 740
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 749
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "number":Ljava/lang/String;
    .end local v10    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v11    # "date":J
    .end local v13    # "groupNumber":Ljava/lang/String;
    .end local v14    # "isEmergencyNumber":Z
    .end local v15    # "missedCall":Z
    :cond_e
    :goto_4
    return-void

    .line 531
    .end local v8    # "autoretrySetting":I
    .end local v16    # "ringingCall":Lcom/android/internal/telephony/Call;
    .end local v18    # "toneToPlay":I
    :cond_f
    const-string v2, "MSimCallNotifier"

    const-string v5, "onDisconnect: null connection"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 578
    .restart local v8    # "autoretrySetting":I
    .restart local v16    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_10
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1

    .line 582
    :cond_11
    const-string v2, "stopRing()... (onDisconnect)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1

    .line 611
    .restart local v10    # "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    .restart local v18    # "toneToPlay":I
    :cond_12
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_13

    .line 612
    const-string v2, "- need to play CONGESTION tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 613
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 614
    :cond_13
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v10, v2, :cond_14

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isOtaCallInActiveState()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 617
    const-string v2, "- need to play OTA_CALL_END tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 618
    const/16 v18, 0xb

    goto/16 :goto_2

    .line 619
    :cond_15
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_16

    .line 620
    const-string v2, "- need to play CDMA_REORDER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 621
    const/16 v18, 0x6

    goto/16 :goto_2

    .line 622
    :cond_16
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_17

    .line 623
    const-string v2, "- need to play CDMA_INTERCEPT tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 624
    const/16 v18, 0x7

    goto/16 :goto_2

    .line 625
    :cond_17
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_18

    .line 626
    const-string v2, "- need to play CDMA_DROP tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 627
    const/16 v18, 0x8

    goto/16 :goto_2

    .line 628
    :cond_18
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_19

    .line 629
    const-string v2, "- need to play OUT OF SERVICE tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 630
    const/16 v18, 0x9

    goto/16 :goto_2

    .line 631
    :cond_19
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_1a

    .line 632
    const-string v2, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 633
    const/16 v18, 0xd

    goto/16 :goto_2

    .line 634
    :cond_1a
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v10, v2, :cond_4

    .line 635
    const-string v2, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 636
    const/16 v18, 0x4

    goto/16 :goto_2

    .line 699
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v11    # "date":J
    .restart local v13    # "groupNumber":Ljava/lang/String;
    .restart local v14    # "isEmergencyNumber":Z
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 742
    .restart local v15    # "missedCall":Z
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_4

    .line 745
    :cond_1d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_4
.end method

.method protected onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 201
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 202
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    .line 204
    .local v4, "subscription":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNewRingingConnection(): state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", conn = { "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " }"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subscription = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 207
    .local v2, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 210
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, v1}, Lcom/android/phone/MSimCallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 296
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v5

    if-nez v5, :cond_1

    .line 220
    const-string v5, "MSimCallNotifier"

    const-string v6, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MSimCallNotifier;->stopSignalInfoTone()V

    .line 232
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 234
    .local v3, "state":Lcom/android/internal/telephony/Call$State;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- connection is ringing!  state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 263
    const-string v5, "Holding wake lock on new incoming connection."

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 264
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v6, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Active sub : \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 267
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setActiveSubscription(I)V

    .line 271
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimCallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 295
    :goto_1
    const-string v5, "- onNewRingingConnection() done."

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_2
    const-string v5, "- starting call waiting tone..."

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v5, :cond_3

    .line 276
    new-instance v5, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 277
    iget-object v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 281
    :cond_3
    const-string v5, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v5}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, v4}, Lcom/android/phone/MSimCallNotifier;->showIncomingCall(I)V

    goto :goto_1
.end method

.method protected onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 346
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 347
    .local v4, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v6

    .line 349
    .local v6, "subscription":I
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 350
    .local v5, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPhoneStateChanged: state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " subscription = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 352
    iput-object v5, p0, Lcom/android/phone/CallNotifier;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 357
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v9, v8, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v8, :cond_c

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v9, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNotificationAlerts(Z)V

    .line 360
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 361
    .local v3, "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 362
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    .line 365
    :cond_0
    iget-boolean v8, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v8, :cond_1

    .line 366
    const/16 v7, 0xa

    .line 367
    .local v7, "toneToPlay":I
    new-instance v8, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v8, p0, v7}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 370
    .end local v7    # "toneToPlay":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MSimCallNotifier;->stopSignalInfoTone()V

    .line 372
    :cond_2
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 380
    :cond_3
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneGlobals;->updateBluetoothIndication(Z)V

    .line 384
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8, v5}, Lcom/android/phone/PhoneGlobals;->updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 386
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v8, :cond_6

    .line 388
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v8, :cond_4

    .line 389
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 390
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 393
    :cond_4
    const-string v8, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 395
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 399
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v8

    if-nez v8, :cond_5

    .line 400
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v9, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 409
    :cond_5
    const-string v8, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 410
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v8}, Lcom/android/phone/Ringer;->stopRing()V

    .line 425
    const-string v8, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 427
    const/16 v8, 0x1b

    invoke-virtual {p0, v8}, Lcom/android/phone/MSimCallNotifier;->removeMessages(I)V

    .line 428
    const/16 v0, 0x3e8

    .line 429
    .local v0, "IN_CALL_NOTIFICATION_UPDATE_DELAY":I
    const/16 v8, 0x1b

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/phone/MSimCallNotifier;->sendEmptyMessageDelayed(IJ)Z

    .line 433
    .end local v0    # "IN_CALL_NOTIFICATION_UPDATE_DELAY":I
    :cond_6
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 434
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 435
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 437
    const-string v8, "onPhoneStateChanged: it is an emergency call."

    invoke-direct {p0, v8}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 438
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 439
    .local v2, "callState":Lcom/android/internal/telephony/Call$State;
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v8, :cond_7

    .line 440
    new-instance v8, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v8, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 443
    :cond_7
    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v8, :cond_8

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_d

    .line 444
    :cond_8
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "emergency_tone"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 447
    iget v8, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v8, :cond_9

    .line 449
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v8, :cond_9

    .line 450
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V

    .line 463
    .end local v1    # "c":Lcom/android/internal/telephony/Connection;
    .end local v2    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_9
    :goto_1
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_a

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_a

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_b

    .line 466
    :cond_a
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 467
    .restart local v2    # "callState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v8

    if-nez v8, :cond_b

    .line 470
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v8, :cond_b

    .line 471
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 472
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 476
    .end local v2    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_b
    return-void

    .line 357
    .end local v3    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 453
    .restart local v1    # "c":Lcom/android/internal/telephony/Connection;
    .restart local v2    # "callState":Lcom/android/internal/telephony/Call$State;
    .restart local v3    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_d
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v8, :cond_9

    .line 454
    iget v8, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v8, :cond_9

    .line 455
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v8, :cond_9

    .line 456
    iget-object v8, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-virtual {v8}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V

    goto :goto_1
.end method

.method protected onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 780
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v7, :cond_1

    .line 781
    const-string v7, "MSimCallNotifier"

    const-string v8, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    const/4 v2, 0x0

    .line 787
    .local v2, "subscription":I
    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 790
    invoke-virtual {p0}, Lcom/android/phone/MSimCallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    .line 793
    :cond_2
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v1, v7

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 795
    .local v1, "signalInfoRec":Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;
    if-eqz v1, :cond_0

    .line 796
    iget-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 797
    .local v0, "isPresent":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: isPresent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 798
    if-eqz v0, :cond_0

    .line 799
    iget v6, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 800
    .local v6, "uSignalType":I
    iget v4, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 801
    .local v4, "uAlertPitch":I
    iget v5, v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 803
    .local v5, "uSignal":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalInfo: uSignalType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uAlertPitch="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uSignal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 806
    invoke-static {v6, v4, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v3

    .line 810
    .local v3, "toneID":I
    new-instance v7, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;

    invoke-direct {v7, p0, v3}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier$SignalInfoTonePlayer;->start()V

    goto :goto_0
.end method

.method protected onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 322
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 323
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v2

    .line 324
    .local v2, "subscription":I
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 326
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v3, :cond_0

    .line 328
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setActiveSubscription(I)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/phone/MSimCallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 331
    const-string v3, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v3}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimCallNotifier;->showIncomingCall(I)V

    .line 334
    :cond_0
    return-void
.end method

.method protected onXDivertChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onXDivertChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimNotificationMgr;->updateXDivert(Z)V

    .line 159
    return-void
.end method

.method protected registerForNotifications()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 109
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x36

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSubscriptionChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    return-void
.end method

.method protected resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 756
    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 769
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getActiveSubscription()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyOtherSubActive(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 772
    :cond_1
    return-void
.end method

.method sendMwiChangedDelayed(JLcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "delayMillis"    # J
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 147
    const/16 v1, 0x15

    invoke-static {p0, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/MSimCallNotifier;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    return-void
.end method

.method protected setXDivertStatus(Z)V
    .locals 5
    .param p1, "status"    # Z

    .prologue
    .line 172
    const-string v2, "MSimCallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setXDivertStatus status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "xdivert_status_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    return-void
.end method

.method protected showIncomingCall(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showIncomingCall()...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 304
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "call"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 315
    const-string v0, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimCallNotifier;->log(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    check-cast v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/MSimNotificationMgr;->updateNotificationAndLaunchIncomingCallUi(I)V

    .line 318
    return-void

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0
.end method
