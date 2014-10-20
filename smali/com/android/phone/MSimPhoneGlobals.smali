.class public Lcom/android/phone/MSimPhoneGlobals;
.super Lcom/android/phone/PhoneGlobals;
.source "MSimPhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;,
        Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mMSPhones:[Lcom/android/phone/MSPhone;


# instance fields
.field private mDefaultSubscription:I

.field private mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field phoneMgrMSim:Lcom/android/phone/MSimPhoneInterfaceManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneGlobals;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimPhoneGlobals;->mDefaultSubscription:I

    .line 120
    const-string v0, "MSimPhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSPhoneApp creation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/MSimPhoneGlobals;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimPhoneGlobals;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/phone/MSimPhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/MSimPhoneGlobals;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MSimPhoneGlobals;
    .param p1, "x1"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/phone/MSimPhoneGlobals;->mDefaultSubscription:I

    return p1
.end method

.method protected static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    const-class v0, Lcom/android/phone/MSimInCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMSPhone(I)Lcom/android/phone/MSPhone;
    .locals 4

    .prologue
    .line 740
    :try_start_0
    sget-object v0, Lcom/android/phone/MSimPhoneGlobals;->mMSPhones:[Lcom/android/phone/MSPhone;

    aget-object v0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    return-object v0

    .line 741
    :catch_0
    move-exception v0

    .line 742
    const-string v1, "MSimPhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscripton Index out of bounds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 665
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 671
    const-string v4, "MSimPhoneGlobals"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v4, "persit.env.data.disable.sub2"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 681
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 682
    const-string v3, "MSimPhoneGlobals"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operatorNumber is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_2

    .line 684
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 686
    const-string v3, "MSimPhoneGlobals"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v3, "460"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "455"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 692
    :goto_0
    if-eqz v0, :cond_1

    .line 693
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getPrioritySubscription()I

    move-result v0

    .line 694
    if-eqz v0, :cond_1

    .line 695
    new-instance v0, Lcom/android/phone/MSimPhoneGlobals$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MSimPhoneGlobals$1;-><init>(Lcom/android/phone/MSimPhoneGlobals;)V

    .line 718
    invoke-static {v0, v2, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 721
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v2

    .line 723
    const-string v3, "MSimPhoneGlobals"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataSubscription:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getDataSubscription()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getDataSubscription()I

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    invoke-virtual {v2, v1, v0}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    .line 735
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private updatePhoneAppCdmaVariables(I)V
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 639
    const-string v1, "MSimPhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePhoneAppCdmaVariables"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {p1}, Lcom/android/phone/MSimPhoneGlobals;->getMSPhone(I)Lcom/android/phone/MSPhone;

    move-result-object v0

    .line 642
    .local v0, "msPhone":Lcom/android/phone/MSPhone;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/phone/MSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 643
    iget-object v1, v0, Lcom/android/phone/MSPhone;->mCdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 644
    iget-object v1, v0, Lcom/android/phone/MSPhone;->mCdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 645
    iget-object v1, v0, Lcom/android/phone/MSPhone;->mCdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 646
    iget-object v1, v0, Lcom/android/phone/MSPhone;->mCdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 647
    iget-object v1, v0, Lcom/android/phone/MSPhone;->mCdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 649
    :cond_0
    return-void
.end method


# virtual methods
.method createInCallIntent(I)Landroid/content/Intent;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 400
    const-string v1, "MSimPhoneGlobals"

    const-string v2, "createInCallIntent subscription:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 402
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const/high16 v1, 0x10840000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/MSimPhoneGlobals;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    return-object v0
.end method

.method displayCallScreen()V
    .locals 5

    .prologue
    .line 416
    const-string v1, "MSimPhoneGlobals"

    const-string v2, "displayCallScreen()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-boolean v1, Lcom/android/phone/MSimPhoneGlobals;->sVoiceCapable:Z

    if-nez v1, :cond_0

    .line 421
    const-string v1, "MSimPhoneGlobals"

    const-string v2, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "stack dump"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    :goto_0
    return-void

    .line 428
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimPhoneGlobals;->createInCallIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/MSimPhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "MSimPhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDataSubscription()I
    .locals 1

    .prologue
    .line 847
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v0

    return v0
.end method

.method getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 832
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 755
    invoke-static {p1}, Lcom/android/phone/MSimPhoneGlobals;->getMSPhone(I)Lcom/android/phone/MSPhone;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_0

    .line 757
    iget-object v0, v0, Lcom/android/phone/MSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 760
    :goto_0
    return-object v0

    .line 759
    :cond_0
    const-string v0, "MSimPhoneGlobals"

    const-string v1, "msPhone object is null returning default phone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method getPhoneState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 479
    invoke-static {p1}, Lcom/android/phone/MSimPhoneGlobals;->getMSPhone(I)Lcom/android/phone/MSPhone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/MSPhone;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getVoiceSubscription()I
    .locals 1

    .prologue
    .line 840
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public getVoiceSubscriptionInService()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 776
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getVoiceSubscription()I

    move-result v4

    .line 780
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    .line 781
    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v6

    .line 782
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move v1, v2

    move v0, v3

    .line 784
    :goto_0
    if-ge v1, v6, :cond_7

    .line 785
    invoke-virtual {p0, v1}, Lcom/android/phone/MSimPhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 786
    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 787
    if-eqz v8, :cond_0

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 790
    :cond_0
    if-ne v1, v4, :cond_2

    .line 793
    :goto_1
    const-string v0, "MSimPhoneGlobals"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Voice sub in service = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    if-ne v1, v3, :cond_1

    move v0, v1

    move v1, v2

    .line 796
    :goto_2
    if-ge v1, v6, :cond_6

    .line 797
    invoke-virtual {v5, v1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    .line 799
    if-ne v1, v4, :cond_4

    .line 802
    :goto_3
    if-ne v1, v3, :cond_1

    move v1, v2

    .line 805
    :cond_1
    const-string v0, "MSimPhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voice sub in service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " preferred sub="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return v1

    :cond_2
    move v0, v1

    .line 784
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 796
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method initForNewRadioTechnology(I)V
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    .line 491
    const-string v4, "MSimPhoneGlobals"

    const-string v5, "initForNewRadioTechnology..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-static {p1}, Lcom/android/phone/MSimPhoneGlobals;->getMSPhone(I)Lcom/android/phone/MSPhone;

    move-result-object v1

    .line 494
    .local v1, "msPhone":Lcom/android/phone/MSPhone;
    iget-object v2, v1, Lcom/android/phone/MSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 496
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 498
    invoke-virtual {v1}, Lcom/android/phone/MSPhone;->initializeCdmaVariables()V

    .line 499
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneGlobals;->updatePhoneAppCdmaVariables(I)V

    .line 500
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->clearOtaState()V

    .line 503
    :cond_0
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v5}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 504
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 505
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v4, :cond_1

    .line 507
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v4}, Landroid/bluetooth/IBluetoothHeadsetPhone;->updateBtHandsfreeAfterRadioTechnologyChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v4, :cond_2

    .line 513
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 517
    :cond_2
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 518
    .local v3, "sim":Lcom/android/internal/telephony/IccCard;
    if-eqz v3, :cond_3

    .line 519
    const-string v4, "MSimPhoneGlobals"

    const-string v5, "Update registration for ICC status..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 524
    :cond_3
    return-void

    .line 508
    .end local v3    # "sim":Lcom/android/internal/telephony/IccCard;
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MSimPhoneGlobals"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isSimPinEnabled(I)Z
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 439
    invoke-static {p1}, Lcom/android/phone/MSimPhoneGlobals;->getMSPhone(I)Lcom/android/phone/MSPhone;

    move-result-object v0

    .line 440
    .local v0, "msPhone":Lcom/android/phone/MSPhone;
    iget-boolean v1, v0, Lcom/android/phone/MSPhone;->mIsSimPinEnabled:Z

    return v1
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 124
    const-string v0, "MSimPhoneGlobals"

    const-string v2, "onCreate()..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v0, "MSimPhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSimPhoneApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110033

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MSimPhoneGlobals;->sVoiceCapable:Z

    .line 139
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_8

    .line 141
    invoke-static {p0}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->makeMultiSimDefaultPhones(Landroid/content/Context;)V

    .line 144
    invoke-static {}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/TelephonyDebugService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 150
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 152
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    .line 154
    new-array v0, v3, [Lcom/android/phone/MSPhone;

    sput-object v0, Lcom/android/phone/MSimPhoneGlobals;->mMSPhones:[Lcom/android/phone/MSPhone;

    move v0, v1

    .line 155
    :goto_0
    if-ge v0, v3, :cond_0

    .line 156
    sget-object v4, Lcom/android/phone/MSimPhoneGlobals;->mMSPhones:[Lcom/android/phone/MSPhone;

    new-instance v5, Lcom/android/phone/MSPhone;

    invoke-direct {v5, v0}, Lcom/android/phone/MSPhone;-><init>(I)V

    aput-object v5, v4, v0

    .line 157
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    sget-object v5, Lcom/android/phone/MSimPhoneGlobals;->mMSPhones:[Lcom/android/phone/MSPhone;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/phone/MSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getDefaultSubscription()I

    move-result v0

    iput v0, p0, Lcom/android/phone/MSimPhoneGlobals;->mDefaultSubscription:I

    .line 164
    iget v0, p0, Lcom/android/phone/MSimPhoneGlobals;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->setDefaultPhone(I)V

    .line 165
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 169
    invoke-static {p0}, Lcom/android/phone/MSimNotificationMgr;->init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 171
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 172
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0}, Lcom/android/phone/MSimPhoneInterfaceManager;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/MSimPhoneInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSimPhoneGlobals;->phoneMgrMSim:Lcom/android/phone/MSimPhoneInterfaceManager;

    .line 174
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 178
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 180
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 181
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 184
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/phone/MSimPhoneGlobals;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 195
    :goto_1
    invoke-static {p0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    .line 197
    new-instance v0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v7}, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/phone/MSimPhoneGlobals$1;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v7}, Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/phone/MSimPhoneGlobals$1;)V

    iput-object v0, p0, Lcom/android/phone/MSimPhoneGlobals;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    .line 202
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x1a

    const-string v4, "MSimPhoneGlobals"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 204
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const v3, 0x20000001

    const-string v4, "MSimPhoneGlobals"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 207
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "MSimPhoneGlobals"

    invoke-virtual {v0, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 212
    :cond_2
    const-string v0, "MSimPhoneGlobals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: mProximityWakeLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    new-instance v0, Lcom/android/phone/AccelerometerListener;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 219
    :cond_3
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 223
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 229
    new-instance v0, Landroid/os/UpdateLock;

    const-string v3, "phone"

    invoke-direct {v0, v3}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    .line 231
    const-string v0, "MSimPhoneGlobals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: mUpdateLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Lcom/android/phone/CallLogger;

    new-instance v3, Lcom/android/phone/common/CallLogAsync;

    invoke-direct {v3}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/phone/CallLogger;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/common/CallLogAsync;)V

    .line 238
    invoke-static {p0, v0}, Lcom/android/phone/MSimCallController;->init(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    .line 241
    invoke-static {p0}, Lcom/android/phone/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 247
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 253
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    invoke-static {p0, v3, v4, v0}, Lcom/android/phone/MSimCallNotifier;->init(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 255
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    check-cast v0, Lcom/android/phone/MSimCallNotifier;

    invoke-static {p0, v3, v0, p0}, Lcom/android/phone/XDivertUtility;->init(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/MSimCallNotifier;Landroid/content/Context;)Lcom/android/phone/XDivertUtility;

    move v0, v1

    .line 258
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 260
    if-eqz v3, :cond_4

    .line 261
    const-string v4, "MSimPhoneGlobals"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register for ICC status on subscription: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 192
    :cond_5
    iput-object v7, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    goto/16 :goto_1

    .line 268
    :cond_6
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x34

    invoke-virtual {v0, v3, v4, v7}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    .line 277
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v3, "qualcomm.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-boolean v3, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    if-eqz v3, :cond_7

    .line 290
    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    :cond_7
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v3, p0, Lcom/android/phone/MSimPhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/MSimPhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 305
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 307
    iget-object v3, p0, Lcom/android/phone/MSimPhoneGlobals;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/MSimPhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 310
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 314
    const v0, 0x7f060012

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 316
    const/high16 v0, 0x7f060000

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 321
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 324
    :cond_8
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 325
    :goto_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 326
    invoke-direct {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->updatePhoneAppCdmaVariables(I)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 331
    :cond_9
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 334
    iput-boolean v1, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    .line 343
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    if-eqz v0, :cond_a

    .line 344
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "preferred_tty_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    .line 348
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 352
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hearing_aid"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 355
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/MSimPhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 356
    const-string v2, "HACSetting"

    if-eqz v1, :cond_c

    const-string v1, "ON"

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_b
    invoke-virtual {p0, p0}, Lcom/android/phone/MSimPhoneGlobals;->bindRecorder(Landroid/content/Context;)V

    .line 375
    return-void

    .line 356
    :cond_c
    const-string v1, "OFF"

    goto :goto_4
.end method

.method public onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 484
    const-string v2, "MSimPhoneGlobals"

    const-string v3, "onMMIComplete()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 486
    .local v1, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 487
    .local v0, "localPhone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/MSimPhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v0, v2, v1, v4, v4}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 488
    return-void
.end method

.method setDefaultPhone(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 821
    invoke-static {p1}, Lcom/android/phone/MSimPhoneGlobals;->getMSPhone(I)Lcom/android/phone/MSPhone;

    move-result-object v0

    .line 822
    .local v0, "msPhone":Lcom/android/phone/MSPhone;
    iget-object v1, v0, Lcom/android/phone/MSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 823
    iget-object v1, v0, Lcom/android/phone/MSPhone;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 824
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneGlobals;->updatePhoneAppCdmaVariables(I)V

    .line 825
    iput p1, p0, Lcom/android/phone/MSimPhoneGlobals;->mDefaultSubscription:I

    .line 826
    return-void
.end method
