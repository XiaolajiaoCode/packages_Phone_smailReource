.class public Lcom/android/phone/XDivertCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "XDivertCheckBoxPreference.java"


# instance fields
.field private final DBG:Z

.field mAction:I

.field mCFLine1Number:[Ljava/lang/String;

.field private mCallNotif:Lcom/android/phone/MSimCallNotifier;

.field private final mContext:Landroid/content/Context;

.field private final mGetOptionComplete:Landroid/os/Handler;

.field mLine1Number:[Ljava/lang/String;

.field mNumPhones:I

.field mPhoneObj:[Lcom/android/internal/telephony/Phone;

.field mReason:I

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field mSub1CallWaiting:Z

.field mSub2CallWaiting:Z

.field mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private mXDivertUtility:Lcom/android/phone/XDivertUtility;

.field mXdivertStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/XDivertCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/XDivertCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->DBG:Z

    .line 274
    new-instance v0, Lcom/android/phone/XDivertCheckBoxPreference$4;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertCheckBoxPreference$4;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    .line 290
    new-instance v0, Lcom/android/phone/XDivertCheckBoxPreference$5;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertCheckBoxPreference$5;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    .line 318
    new-instance v0, Lcom/android/phone/XDivertCheckBoxPreference$6;

    invoke-direct {v0, p0}, Lcom/android/phone/XDivertCheckBoxPreference$6;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mRevertOptionComplete:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/XDivertCheckBoxPreference;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleGetCFNRCResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/XDivertCheckBoxPreference;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/XDivertCheckBoxPreference;->handleGetCallWaitingResponse(Landroid/os/AsyncResult;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/XDivertCheckBoxPreference;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleSetCFNRCResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/XDivertCheckBoxPreference;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleSetCallWaitingResponse(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/XDivertCheckBoxPreference;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/XDivertCheckBoxPreference;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertSetCFNRC(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method private handleGetCFNRCResponse(Landroid/os/AsyncResult;I)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "arg"    # I

    .prologue
    const/16 v10, 0x190

    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 331
    const-string v4, "XDivertCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFResponse: done arg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 333
    const-string v4, "XDivertCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFResponse: ar.exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v5, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 336
    invoke-direct {p0, v9, v7}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 338
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v4, p0, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 339
    invoke-direct {p0, v9, v7}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v4

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 342
    .local v0, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v0, :cond_3

    .line 343
    const-string v4, "XDivertCheckBoxPreference"

    const-string v5, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v4, p0, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_0

    .line 346
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v0

    .local v3, "length":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 347
    const-string v4, "XDivertCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFResponse, cfInfoArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    aget-object v4, v0, v1

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    if-nez p2, :cond_5

    .line 351
    aget-object v2, v0, v1

    .line 352
    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aput-object v5, v4, v8

    .line 355
    invoke-virtual {p0, v8}, Lcom/android/phone/XDivertCheckBoxPreference;->queryCallWaiting(I)V

    .line 346
    .end local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 356
    :cond_5
    aget-object v4, v0, v1

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    if-ne p2, v7, :cond_4

    .line 358
    aget-object v2, v0, v1

    .line 359
    .restart local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 362
    invoke-virtual {p0, v7}, Lcom/android/phone/XDivertCheckBoxPreference;->queryCallWaiting(I)V

    goto :goto_2
.end method

.method private handleGetCallWaitingResponse(Landroid/os/AsyncResult;II)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/16 v5, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 395
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 396
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCallWaitingResponse: ar.exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 398
    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 401
    :cond_0
    invoke-direct {p0, v5, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 442
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 403
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v3, 0x190

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 405
    :cond_3
    invoke-direct {p0, v5, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    goto :goto_0

    .line 407
    :cond_4
    const-string v1, "XDivertCheckBoxPreference"

    const-string v4, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 412
    .local v0, "cwArray":[I
    if-nez p2, :cond_6

    .line 413
    aget v1, v0, v3

    if-ne v1, v2, :cond_5

    aget v1, v0, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    .line 414
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CW for Sub0 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    monitor-enter p0

    .line 421
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 413
    goto :goto_1

    .line 424
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 429
    :cond_6
    if-ne p2, v2, :cond_1

    .line 430
    aget v1, v0, v3

    if-ne v1, v2, :cond_7

    aget v1, v0, v2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_7

    move v3, v2

    :cond_7
    iput-boolean v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    .line 431
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CW for Sub1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0, v5, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 436
    invoke-direct {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->validateXDivert()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    .line 437
    iget-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {p0, v1}, Lcom/android/phone/XDivertCheckBoxPreference;->setChecked(Z)V

    .line 438
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    .line 439
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v1, v2}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    goto/16 :goto_0

    .line 422
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private handleRevertOperation(II)V
    .locals 6
    .param p1, "subscription"    # I
    .param p2, "event"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 487
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRevertOperation sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-nez p1, :cond_1

    .line 489
    packed-switch p2, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 491
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 497
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/phone/XDivertCheckBoxPreference;->revertCFNRC(I)V

    goto :goto_0

    .line 500
    :cond_1
    if-ne p1, v5, :cond_0

    .line 501
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 503
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_2

    .line 504
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d023a

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 510
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 514
    .end local v0    # "toast":Landroid/widget/Toast;
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->revertCFNRC(I)V

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 501
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleRevertSetCFNRC(Landroid/os/AsyncResult;I)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "arg"    # I

    .prologue
    .line 546
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRevertSetCFNRC: done arg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/XDivertCheckBoxPreference;->processStopDialog(IZ)V

    .line 549
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 550
    const-string v1, "XDivertCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRevertSetCFNRC: ar.exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v2, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 558
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d023a

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 561
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 562
    return-void

    .line 553
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v2, 0x190

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private handleSetCFNRCResponse(Landroid/os/AsyncResult;I)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "arg"    # I

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 370
    const-string v0, "XDivertCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCFResponse: done on Sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "XDivertCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCFResponse: ar.exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v1, p0, v0}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 376
    invoke-direct {p0, p2, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertOperation(II)V

    .line 392
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v1, 0x190

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 380
    :cond_1
    invoke-direct {p0, p2, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertOperation(II)V

    goto :goto_0

    .line 382
    :cond_2
    if-nez p2, :cond_3

    .line 383
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v0, p2

    .line 389
    :goto_1
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v1, v1, v3

    aput-object v1, v0, p2

    goto :goto_1
.end method

.method private handleSetCallWaitingResponse(Landroid/os/AsyncResult;I)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "arg"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 445
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 446
    const-string v0, "XDivertCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCallWaitingResponse: ar.exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v0, 0x7

    invoke-direct {p0, p2, v0}, Lcom/android/phone/XDivertCheckBoxPreference;->handleRevertOperation(II)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    const-string v0, "XDivertCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCallWaitingResponse success arg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    move v4, v6

    .line 451
    .local v4, "time":I
    :goto_1
    if-nez p2, :cond_4

    .line 456
    monitor-enter p0

    .line 458
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    if-nez v0, :cond_3

    move v0, v5

    :goto_3
    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    .line 465
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v6

    iget-object v7, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 450
    .end local v4    # "time":I
    :cond_2
    const/16 v4, 0x14

    goto :goto_1

    .line 461
    .restart local v4    # "time":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v0, v6

    .line 463
    goto :goto_3

    .line 470
    :cond_4
    if-ne p2, v5, :cond_0

    .line 471
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    if-nez v0, :cond_6

    :goto_4
    iput-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    .line 472
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_5

    .line 473
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 478
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->validateXDivert()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    .line 479
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/phone/XDivertCheckBoxPreference;->setChecked(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallNotifier;->onXDivertChanged(Z)V

    .line 481
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    iget-boolean v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/MSimCallNotifier;->setXDivertStatus(Z)V

    goto :goto_0

    :cond_6
    move v5, v6

    .line 471
    goto :goto_4

    .line 459
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private processStartDialog(IZ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "read"    # Z

    .prologue
    .line 259
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/XDivertCheckBoxPreference$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/XDivertCheckBoxPreference$3;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 272
    return-void
.end method

.method private processStopDialog(IZ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "read"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "XDivertCheckBoxPreference"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, p2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 256
    :cond_0
    return-void
.end method

.method private revertCFNRC(I)V
    .locals 9
    .param p1, "arg"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 521
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 524
    .local v1, "action":I
    :goto_0
    const/4 v2, 0x3

    .line 525
    .local v2, "reason":I
    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    move v4, v5

    .line 527
    .local v4, "time":I
    :goto_1
    const-string v0, "XDivertCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "revertCFNRc arg = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-nez p1, :cond_3

    .line 529
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v7

    iget-object v6, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mRevertOptionComplete:Landroid/os/Handler;

    invoke-virtual {v6, v8, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 543
    :cond_0
    :goto_2
    return-void

    .end local v1    # "action":I
    .end local v2    # "reason":I
    .end local v4    # "time":I
    :cond_1
    move v1, v5

    .line 521
    goto :goto_0

    .line 525
    .restart local v1    # "action":I
    .restart local v2    # "reason":I
    :cond_2
    const/16 v4, 0x14

    goto :goto_1

    .line 535
    .restart local v4    # "time":I
    :cond_3
    if-ne p1, v7, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v7

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mRevertOptionComplete:Landroid/os/Handler;

    invoke-virtual {v5, v8, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_2
.end method

.method private validateXDivert()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 188
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 189
    .local v0, "check1":Z
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 190
    .local v1, "check2":Z
    const-string v4, "XDivertCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " CFNR sub1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CFNR sub2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSub1CallWaiting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSub2CallWaiting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    iget-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->displayAlertMessage(ZZZZ)V

    .line 193
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 194
    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_1

    .line 195
    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    iget-boolean v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    if-ne v4, v5, :cond_0

    .line 202
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 198
    goto :goto_0

    :cond_1
    move v2, v3

    .line 200
    goto :goto_0

    :cond_2
    move v2, v3

    .line 202
    goto :goto_0
.end method


# virtual methods
.method public displayAlertMessage(ZZZZ)V
    .locals 9
    .param p1, "sub1Cfnrc"    # Z
    .param p2, "sub2Cfnrc"    # Z
    .param p3, "sub1CW"    # Z
    .param p4, "sub2CW"    # Z

    .prologue
    const v8, 0x7f0d023d

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 207
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 208
    .local v3, "subStatus":[I
    new-array v2, v4, [I

    fill-array-data v2, :array_1

    .line 209
    .local v2, "resSubId":[I
    const-string v0, ""

    .line 211
    .local v0, "dispMsg":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    if-ge v1, v4, :cond_2

    .line 216
    if-ne p1, v7, :cond_0

    if-ne p1, p3, :cond_0

    if-nez v1, :cond_0

    .line 217
    aput v8, v3, v1

    .line 219
    :cond_0
    if-ne p2, v7, :cond_1

    if-ne p2, p4, :cond_1

    if-ne v1, v7, :cond_1

    .line 220
    aput v8, v3, v1

    .line 223
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/XDivertCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_2
    const-string v4, "XDivertCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayAlertMessage:  dispMsg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 231
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d023c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/phone/XDivertCheckBoxPreference$2;

    invoke-direct {v6, p0}, Lcom/android/phone/XDivertCheckBoxPreference$2;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v5, Lcom/android/phone/XDivertCheckBoxPreference$1;

    invoke-direct {v5, p0}, Lcom/android/phone/XDivertCheckBoxPreference$1;-><init>(Lcom/android/phone/XDivertCheckBoxPreference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 249
    :cond_3
    return-void

    .line 207
    :array_0
    .array-data 4
        0x7f0d023e
        0x7f0d023e
    .end array-data

    .line 208
    :array_1
    .array-data 4
        0x7f0d0310
        0x7f0d0311
    .end array-data
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z[Ljava/lang/String;)V
    .locals 7
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z
    .param p3, "line1Number"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 106
    iput-object p1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 107
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 108
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    check-cast v2, Lcom/android/phone/MSimCallNotifier;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCallNotif:Lcom/android/phone/MSimCallNotifier;

    .line 110
    invoke-static {}, Lcom/android/phone/XDivertUtility;->getInstance()Lcom/android/phone/XDivertUtility;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    .line 111
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    if-ge v1, v2, :cond_0

    .line 114
    const-string v2, "XDivertCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXDivertUtility:Lcom/android/phone/XDivertUtility;

    aget-object v3, p3, v1

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/XDivertUtility;->storeNumber(Ljava/lang/String;I)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/XDivertCheckBoxPreference;->processStartDialog(IZ)V

    .line 119
    if-nez p2, :cond_2

    .line 120
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    .line 121
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    .line 122
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    .line 123
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/MSimPhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aput-object v3, v2, v1

    .line 125
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, p3, v1

    aput-object v3, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 132
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v1, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 136
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 138
    const/16 v0, 0x8

    invoke-direct {p0, v0, v5}, Lcom/android/phone/XDivertCheckBoxPreference;->processStartDialog(IZ)V

    .line 139
    const-string v0, "XDivertCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick mXdivertStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    iput-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub2CallWaiting:Z

    .line 142
    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mXdivertStatus:Z

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    iput v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    .line 145
    iput v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    .line 146
    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    move v4, v5

    .line 151
    .local v4, "time":I
    :goto_1
    monitor-enter p0

    .line 153
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mCFLine1Number:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 161
    .local v6, "requestForSub1":Z
    if-eqz v6, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSub1CallWaiting:Z

    if-ne v6, v0, :cond_2

    iget v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    if-ne v0, v1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v8

    iget v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v7, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v7, v9, v8, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 177
    :goto_3
    return-void

    .end local v4    # "time":I
    .end local v6    # "requestForSub1":Z
    :cond_0
    move v0, v1

    .line 142
    goto :goto_0

    .line 146
    :cond_1
    const/16 v4, 0x14

    goto :goto_1

    .line 156
    .restart local v4    # "time":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 171
    .restart local v6    # "requestForSub1":Z
    :cond_2
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    iget v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mAction:I

    iget v2, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mReason:I

    iget-object v3, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mLine1Number:[Ljava/lang/String;

    aget-object v3, v3, v8

    iget-object v7, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mSetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v7, v9, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_3

    .line 154
    .end local v6    # "requestForSub1":Z
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method queryCallWaiting(I)V
    .locals 3
    .param p1, "arg"    # I

    .prologue
    const/4 v2, 0x3

    .line 181
    iget-object v0, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/phone/XDivertCheckBoxPreference;->mGetOptionComplete:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 183
    return-void
.end method
