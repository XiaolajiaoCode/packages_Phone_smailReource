.class public Lcom/android/phone/MSimNotificationMgr;
.super Lcom/android/phone/NotificationMgr;
.source "MSimNotificationMgr.java"


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    .line 71
    return-void
.end method

.method static init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;
    .locals 4

    .prologue
    .line 82
    const-class v1, Lcom/android/phone/MSimNotificationMgr;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/phone/MSimNotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimNotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    sput-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 86
    sget-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 90
    :goto_0
    sget-object v0, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    .line 88
    :cond_0
    const-string v0, "MSimNotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MSimNotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
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
    .line 748
    const-string v0, "MSimNotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void
.end method

.method private updateInCallNotification(IZ)V
    .locals 32
    .param p1, "subscription"    # I
    .param p2, "allowFullScreenIntent"    # Z

    .prologue
    .line 356
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")..."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 362
    sget-boolean v28, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v28, :cond_0

    .line 363
    const-string v28, "- non-voice-capable device; suppressing notification."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 698
    :goto_0
    return-void

    .line 369
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v28

    sget-object v29, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimNotificationMgr;->cancelInCall()V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimNotificationMgr;->cancelMute()V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimNotificationMgr;->cancelSpeakerphone()V

    goto :goto_0

    .line 376
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall(I)Z

    move-result v18

    .line 377
    .local v18, "hasRingingCall":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(I)Z

    move-result v16

    .line 378
    .local v16, "hasActiveCall":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall(I)Z

    move-result v17

    .line 380
    .local v17, "hasHoldingCall":Z
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "  - hasRingingCall = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 381
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "  - hasActiveCall = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 382
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "  - hasHoldingCall = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v27

    .line 390
    .local v27, "suppressNotification":Z
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "- suppressNotification: initial value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 401
    if-eqz v18, :cond_2

    const/16 v27, 0x0

    .line 405
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/CallNotifier;->getVoicePrivacyState()Z

    move-result v14

    .line 406
    .local v14, "enhancedVoicePrivacy":Z
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "updateInCallNotification: enhancedVoicePrivacy = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 407
    if-eqz v14, :cond_3

    const/16 v27, 0x0

    .line 409
    :cond_3
    if-eqz v27, :cond_4

    .line 410
    const-string v28, "- suppressNotification = true; reducing clutter in status bar..."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimNotificationMgr;->cancelInCall()V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimNotificationMgr;->cancelSpeakerphone()V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimNotificationMgr;->cancelMute()V

    goto/16 :goto_0

    .line 422
    :cond_4
    if-eqz v18, :cond_b

    .line 424
    const v24, 0x7f0200cc

    .line 446
    .local v24, "resId":I
    :goto_1
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "- Updating status bar icon: resId = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 447
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 458
    if-eqz v18, :cond_f

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 465
    .local v11, "currentCall":Lcom/android/internal/telephony/Call;
    :goto_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    .line 467
    .local v12, "currentConn":Lcom/android/internal/telephony/Connection;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    .local v4, "builder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v30

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/android/phone/PhoneGlobals;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v30

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 479
    .local v19, "inCallPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 484
    const/4 v8, 0x0

    .line 485
    .local v8, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v12, :cond_5

    .line 486
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v23

    .line 487
    .local v23, "o":Ljava/lang/Object;
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v8, v23

    .line 488
    check-cast v8, Lcom/android/internal/telephony/CallerInfo;

    .line 495
    .end local v23    # "o":Ljava/lang/Object;
    :cond_5
    :goto_3
    const/16 v20, 0x0

    .line 496
    .local v20, "largeIconWasSet":Z
    if-eqz v8, :cond_16

    .line 499
    iget-boolean v0, v8, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    .line 503
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    if-eqz v28, :cond_13

    .line 504
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 505
    const/16 v20, 0x1

    .line 521
    :cond_6
    :goto_4
    if-nez v20, :cond_7

    iget v0, v8, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v28, v0

    if-lez v28, :cond_7

    .line 523
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "- BitmapDrawable nor person Id not found for large icon. Use photoResource: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v8, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    iget v0, v8, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 528
    .local v13, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v0, v13, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v28, v0

    if-eqz v28, :cond_15

    .line 529
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 530
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 531
    const/16 v20, 0x1

    .line 544
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    :goto_5
    if-nez v20, :cond_8

    .line 545
    const-string v28, "- No useful Bitmap was found for the photo. Use the same icon as in the status bar."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 552
    :cond_8
    if-eqz v12, :cond_19

    .line 553
    const-string v28, "- Updating context text and chronometer."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 554
    if-eqz v18, :cond_17

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0d01fb

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 557
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 595
    :goto_6
    const-string v15, ""

    .line 600
    .local v15, "expandedViewLine2":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0d01ec

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 614
    :goto_7
    const-string v28, "- Updating expanded view: line 2 \'xxxxxxx\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 625
    if-nez v18, :cond_9

    if-eqz v16, :cond_1b

    .line 626
    :cond_9
    const-string v28, "- Using hi-pri notification for ringing/active call!"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 630
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 638
    invoke-virtual {v4, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 640
    if-eqz p2, :cond_a

    .line 646
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "- Setting fullScreenIntent: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 647
    const/16 v28, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v25

    .line 669
    .local v25, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v28

    sget-object v29, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v28

    if-nez v28, :cond_a

    .line 670
    const-string v28, "MSimNotificationMgr"

    const-string v29, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Landroid/app/NotificationManager;->cancel(I)V

    .line 689
    .end local v25    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_a
    :goto_8
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v22

    .line 690
    .local v22, "notification":Landroid/app/Notification;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MSimNotificationMgr;->updateSpeakerNotification()V

    .line 697
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/MSimNotificationMgr;->updateMuteNotification(I)V

    goto/16 :goto_0

    .line 425
    .end local v4    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    .end local v11    # "currentCall":Lcom/android/internal/telephony/Call;
    .end local v12    # "currentConn":Lcom/android/internal/telephony/Connection;
    .end local v15    # "expandedViewLine2":Ljava/lang/String;
    .end local v19    # "inCallPendingIntent":Landroid/app/PendingIntent;
    .end local v20    # "largeIconWasSet":Z
    .end local v22    # "notification":Landroid/app/Notification;
    .end local v24    # "resId":I
    :cond_b
    if-nez v16, :cond_d

    if-eqz v17, :cond_d

    .line 427
    if-eqz v14, :cond_c

    .line 428
    const v24, 0x7f0200d4

    .restart local v24    # "resId":I
    goto/16 :goto_1

    .line 430
    .end local v24    # "resId":I
    :cond_c
    const v24, 0x7f0200d2

    .restart local v24    # "resId":I
    goto/16 :goto_1

    .line 433
    .end local v24    # "resId":I
    :cond_d
    if-eqz v14, :cond_e

    .line 434
    const v24, 0x7f0200d3

    .restart local v24    # "resId":I
    goto/16 :goto_1

    .line 436
    .end local v24    # "resId":I
    :cond_e
    const v24, 0x7f0200cc

    .restart local v24    # "resId":I
    goto/16 :goto_1

    .line 460
    :cond_f
    if-eqz v16, :cond_10

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v11

    .restart local v11    # "currentCall":Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 463
    .end local v11    # "currentCall":Lcom/android/internal/telephony/Call;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v11

    .restart local v11    # "currentCall":Lcom/android/internal/telephony/Call;
    goto/16 :goto_2

    .line 489
    .restart local v4    # "builder":Landroid/app/Notification$Builder;
    .restart local v8    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    .restart local v12    # "currentConn":Lcom/android/internal/telephony/Connection;
    .restart local v19    # "inCallPendingIntent":Landroid/app/PendingIntent;
    .restart local v23    # "o":Ljava/lang/Object;
    :cond_11
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move/from16 v28, v0

    if-eqz v28, :cond_12

    .line 490
    check-cast v23, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v23    # "o":Ljava/lang/Object;
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_3

    .line 492
    .restart local v23    # "o":Ljava/lang/Object;
    :cond_12
    const-string v28, "MSimNotificationMgr"

    const-string v29, "CallerInfo isn\'t available while Call object is available."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 506
    .end local v23    # "o":Ljava/lang/Object;
    .restart local v20    # "largeIconWasSet":Z
    :cond_13
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v28, v0

    if-eqz v28, :cond_14

    .line 507
    const-string v28, "- BitmapDrawable found for large icon"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 508
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    check-cast v28, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 509
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 510
    const/16 v20, 0x1

    .line 511
    goto/16 :goto_4

    .line 513
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_14
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "- Failed to fetch icon from CallerInfo\'s cached photo. (cachedPhotoIcon: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", cachedPhoto: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Ignore it."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 534
    .restart local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_15
    const-string v28, "- PhotoResource was found but it didn\'t return BitmapDrawable. Ignore it"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 540
    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_16
    const-string v28, "- CallerInfo not found. Use the same icon as in the status bar."

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 558
    :cond_17
    if-eqz v17, :cond_18

    if-nez v16, :cond_18

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0d01fa

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 561
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_6

    .line 564
    :cond_18
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 572
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 573
    .local v6, "callDurationMsec":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v6

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0d01f9

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 578
    .local v10, "contentText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 579
    .local v5, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v26

    .line 580
    .local v26, "sub":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    sget-object v29, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v29, v29, v26

    invoke-static/range {v28 .. v29}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 581
    .local v21, "name":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "  ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 583
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_6

    .line 587
    .end local v5    # "call":Lcom/android/internal/telephony/Call;
    .end local v6    # "callDurationMsec":J
    .end local v10    # "contentText":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v26    # "sub":I
    :cond_19
    const-string v28, "MSimNotificationMgr"

    const-string v29, "updateInCallNotification: null connection, can\'t set exp view line 1."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 605
    .restart local v15    # "expandedViewLine2":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-static {v0, v11, v1, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v9

    .line 607
    .local v9, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v0, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_7

    .line 679
    .end local v9    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_1b
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 682
    const-string v28, "Will show \"hang-up\" action in the ongoing active call Notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 684
    const v28, 0x7f0200cd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x7f0d0202

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/phone/PhoneGlobals;->createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v30

    move/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_8
.end method

.method private updateMuteNotification(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/phone/MSimNotificationMgr;->cancelMute()V

    .line 352
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/phone/MSimNotificationMgr;->notifyMute()V

    goto :goto_0

    .line 349
    :cond_1
    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/phone/MSimNotificationMgr;->cancelMute()V

    goto :goto_0
.end method


# virtual methods
.method updateCfi(ZI)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "subscription"    # I

    .prologue
    const/4 v10, 0x0

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCfi(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Sub: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 229
    const/4 v6, 0x2

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 232
    .local v0, "callfwdIcon":[I
    if-nez p2, :cond_0

    const/4 v3, 0x6

    .line 235
    .local v3, "notificationId":I
    :goto_0
    if-eqz p1, :cond_1

    .line 247
    aget v4, v0, p2

    .line 249
    .local v4, "resId":I
    const/4 v5, 0x1

    .line 251
    .local v5, "showExpandedNotification":Z
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.MSimCallFeaturesSetting"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    new-instance v2, Landroid/app/Notification;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct {v2, v4, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 261
    .local v2, "notification":Landroid/app/Notification;
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0094

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0097

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 274
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 276
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 282
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v4    # "resId":I
    .end local v5    # "showExpandedNotification":Z
    :goto_1
    return-void

    .line 232
    .end local v3    # "notificationId":I
    :cond_0
    const/16 v3, 0x15

    goto :goto_0

    .line 280
    .restart local v3    # "notificationId":I
    :cond_1
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 229
    :array_0
    .array-data 4
        0x7f0200cf
        0x7f0200d0
    .end array-data
.end method

.method public updateInCallNotification()V
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getActiveSubscription()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimNotificationMgr;->updateInCallNotification(IZ)V

    .line 322
    return-void
.end method

.method protected updateInCallNotification(Z)V
    .locals 2
    .param p1, "allowFullScreenIntent"    # Z

    .prologue
    .line 326
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getActiveSubscription()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/MSimNotificationMgr;->updateInCallNotification(IZ)V

    .line 327
    return-void
.end method

.method updateMwi(ZLcom/android/internal/telephony/Phone;)V
    .locals 26
    .param p1, "visible"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 101
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateMwi(): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_8

    .line 104
    const v13, 0x108007e

    .line 115
    .local v13, "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0d01fc

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "notificationTitle":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v21

    .line 117
    .local v21, "vmNumber":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "- got vm number: \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 135
    if-nez v21, :cond_1

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v22

    if-nez v22, :cond_1

    .line 136
    const-string v22, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v22, :cond_0

    .line 150
    const-string v22, "  - Retrying in 10000 msec..."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/phone/MSimCallNotifier;

    const-wide/16 v23, 0x2710

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/MSimCallNotifier;->sendMwiChangedDelayed(JLcom/android/internal/telephony/Phone;)V

    .line 220
    .end local v9    # "notificationTitle":Ljava/lang/String;
    .end local v13    # "resId":I
    .end local v21    # "vmNumber":Ljava/lang/String;
    :goto_0
    return-void

    .line 155
    .restart local v9    # "notificationTitle":Ljava/lang/String;
    .restart local v13    # "resId":I
    .restart local v21    # "vmNumber":Ljava/lang/String;
    :cond_0
    const-string v22, "MSimNotificationMgr"

    const-string v23, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 163
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v20

    .line 164
    .local v20, "vmCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0d01fd

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 166
    .local v15, "titleFormat":Ljava/lang/String;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .end local v15    # "titleFormat":Ljava/lang/String;
    .end local v20    # "vmCount":I
    :cond_2
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0d01ff

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "notificationText":Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v22, "android.intent.action.CALL"

    const-string v23, "voicemail"

    const-string v24, ""

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 181
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 183
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 186
    .local v12, "prefs":Landroid/content/SharedPreferences;
    const-string v22, "button_voicemail_notification_ringtone_key"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 188
    .local v16, "uriString":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 189
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 194
    .local v14, "ringtoneUri":Landroid/net/Uri;
    :goto_2
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v5, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 201
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 203
    .local v7, "notification":Landroid/app/Notification;
    const-string v22, "button_voicemail_notification_vibrate_when_key"

    const-string v23, "never"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 205
    .local v19, "vibrateWhen":Ljava/lang/String;
    const-string v22, "always"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 206
    .local v17, "vibrateAlways":Z
    const-string v22, "silent"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 207
    .local v18, "vibrateSilent":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "audio"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 209
    .local v4, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/4 v10, 0x1

    .line 210
    .local v10, "nowSilent":Z
    :goto_3
    if-nez v17, :cond_3

    if-eqz v18, :cond_4

    if-eqz v10, :cond_4

    .line 211
    :cond_3
    iget v0, v7, Landroid/app/Notification;->defaults:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    iput v0, v7, Landroid/app/Notification;->defaults:I

    .line 214
    :cond_4
    iget v0, v7, Landroid/app/Notification;->flags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x20

    move/from16 v0, v22

    iput v0, v7, Landroid/app/Notification;->flags:I

    .line 215
    invoke-static {v7}, Lcom/android/phone/MSimNotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 174
    .end local v4    # "audioManager":Landroid/media/AudioManager;
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "notificationText":Ljava/lang/String;
    .end local v10    # "nowSilent":Z
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "prefs":Landroid/content/SharedPreferences;
    .end local v14    # "ringtoneUri":Landroid/net/Uri;
    .end local v16    # "uriString":Ljava/lang/String;
    .end local v17    # "vibrateAlways":Z
    .end local v18    # "vibrateSilent":Z
    .end local v19    # "vibrateWhen":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0d01fe

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "notificationText":Ljava/lang/String;
    goto/16 :goto_1

    .line 191
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v12    # "prefs":Landroid/content/SharedPreferences;
    .restart local v16    # "uriString":Ljava/lang/String;
    :cond_6
    sget-object v14, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .restart local v14    # "ringtoneUri":Landroid/net/Uri;
    goto/16 :goto_2

    .line 209
    .restart local v4    # "audioManager":Landroid/media/AudioManager;
    .restart local v5    # "builder":Landroid/app/Notification$Builder;
    .restart local v7    # "notification":Landroid/app/Notification;
    .restart local v17    # "vibrateAlways":Z
    .restart local v18    # "vibrateSilent":Z
    .restart local v19    # "vibrateWhen":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 218
    .end local v4    # "audioManager":Landroid/media/AudioManager;
    .end local v5    # "builder":Landroid/app/Notification$Builder;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "notificationText":Ljava/lang/String;
    .end local v9    # "notificationTitle":Ljava/lang/String;
    .end local v11    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "prefs":Landroid/content/SharedPreferences;
    .end local v13    # "resId":I
    .end local v14    # "ringtoneUri":Landroid/net/Uri;
    .end local v16    # "uriString":Ljava/lang/String;
    .end local v17    # "vibrateAlways":Z
    .end local v18    # "vibrateSilent":Z
    .end local v19    # "vibrateWhen":Ljava/lang/String;
    .end local v21    # "vmNumber":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v22, v0

    const/16 v23, 0x5

    invoke-virtual/range {v22 .. v23}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method public updateNotificationAndLaunchIncomingCallUi(I)V
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 316
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MSimNotificationMgr;->updateInCallNotification(IZ)V

    .line 317
    return-void
.end method

.method protected updateNotificationsAtStartup()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 286
    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 292
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v9, "where":Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v0, " AND new=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v0, "- start call log query..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/MSimNotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "- updating in-call notification at startup..."

    invoke-direct {p0, v0}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 304
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lcom/android/phone/MSimNotificationMgr;->updateInCallNotification(IZ)V

    .line 304
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-void
.end method

.method protected updateSpeakerNotification()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 702
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 703
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x0

    .line 704
    .local v2, "showNotification":Z
    const/4 v3, 0x0

    .line 705
    .local v3, "state":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 706
    if-nez v3, :cond_0

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6, v1}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    :cond_0
    move v3, v5

    .line 705
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 706
    goto :goto_1

    .line 708
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v5

    .line 710
    :goto_2
    if-eqz v2, :cond_4

    const-string v4, "updateSpeakerNotification: speaker ON"

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/phone/MSimNotificationMgr;->log(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0, v2}, Lcom/android/phone/MSimNotificationMgr;->updateSpeakerNotification(Z)V

    .line 715
    return-void

    :cond_3
    move v2, v4

    .line 708
    goto :goto_2

    .line 710
    :cond_4
    const-string v4, "updateSpeakerNotification: speaker OFF (or not offhook)"

    goto :goto_3
.end method

.method updateXDivert(Z)V
    .locals 9
    .param p1, "visible"    # Z

    .prologue
    const/16 v8, 0x16

    const/4 v7, 0x0

    .line 723
    const-string v3, "MSimNotificationMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateXDivert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    if-eqz p1, :cond_0

    .line 725
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 727
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MSimCallFeaturesSetting"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const v2, 0x7f0200d1

    .line 730
    .local v2, "resId":I
    new-instance v1, Landroid/app/Notification;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 735
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0d022e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0236

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 741
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 745
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "resId":I
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
