.class Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;
.super Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;
.source "MSimPhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimPhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneGlobals;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneGlobals;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/phone/MSimPhoneGlobals$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MSimPhoneGlobals;
    .param p2, "x1"    # Lcom/android/phone/MSimPhoneGlobals$1;

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneGlobals;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 532
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 533
    const-string v2, "MSimPhoneGlobals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action intent recieved:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v2, "subscription"

    iget-object v3, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/MSimPhoneGlobals;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 536
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 537
    iget-object v0, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/MSimPhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 542
    :goto_0
    const-string v2, "MSimPhoneGlobals"

    const-string v3, "Setting property persist.radio.airplane_mode_on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v3, "persist.radio.airplane_mode_on"

    if-eqz v0, :cond_1

    const-string v2, "0"

    :goto_1
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 546
    iget-object v2, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v2, v1}, Lcom/android/phone/MSimPhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    .line 537
    goto :goto_0

    .line 544
    :cond_1
    const-string v2, "1"

    goto :goto_1

    .line 549
    :cond_2
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 555
    iget-object v0, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 589
    :cond_3
    :goto_3
    return-void

    .line 557
    :cond_4
    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 558
    const-string v0, "phoneName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    const-string v1, "MSimPhoneGlobals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Radio technology switched. Now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is active."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimPhoneGlobals;->initForNewRadioTechnology(I)V

    goto :goto_3

    .line 561
    :cond_5
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 562
    iget-object v0, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimPhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    # invokes: Lcom/android/phone/MSimPhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
    invoke-static {v1, p2, v0}, Lcom/android/phone/MSimPhoneGlobals;->access$200(Lcom/android/phone/MSimPhoneGlobals;Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V

    goto :goto_3

    .line 564
    :cond_6
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 565
    iget-object v0, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimPhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 566
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 567
    const-string v0, "MSimPhoneGlobals"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency Callback Mode arrived in PhoneApp on Sub ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v0, "phoneinECMState"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    const-string v1, "subscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    .line 578
    :cond_7
    const-string v1, "MSimPhoneGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ACTION_EMERGENCY_CALLBACK_MODE_CHANGED, but ECM isn\'t supported for phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 581
    :cond_8
    const-string v1, "qualcomm.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 582
    const-string v0, "MSimPhoneGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default subscription changed, subscription: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    # setter for: Lcom/android/phone/MSimPhoneGlobals;->mDefaultSubscription:I
    invoke-static {v0, v2}, Lcom/android/phone/MSimPhoneGlobals;->access$302(Lcom/android/phone/MSimPhoneGlobals;I)I

    .line 584
    iget-object v0, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v0, v2}, Lcom/android/phone/MSimPhoneGlobals;->setDefaultPhone(I)V

    .line 585
    iget-object v0, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, p0, Lcom/android/phone/MSimPhoneGlobals$MSimPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->setPhone(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_3

    .line 587
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_3
.end method
