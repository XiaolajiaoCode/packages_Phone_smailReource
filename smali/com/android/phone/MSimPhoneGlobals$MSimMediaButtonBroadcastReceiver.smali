.class Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;
.super Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;
.source "MSimPhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimMediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneGlobals;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneGlobals;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimPhoneGlobals;Lcom/android/phone/MSimPhoneGlobals$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MSimPhoneGlobals;
    .param p2, "x1"    # Lcom/android/phone/MSimPhoneGlobals$1;

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/MSimPhoneGlobals;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 605
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 606
    .local v1, "event":Landroid/view/KeyEvent;
    const-string v3, "MSimPhoneGlobals"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaButtonBroadcastReceiver.onReceive() event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_2

    .line 609
    const-string v3, "MSimPhoneGlobals"

    const-string v4, "MediaButtonBroadcastReceiver: HEADSETHOOK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v3, v2}, Lcom/android/phone/MSimPhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 613
    .local v0, "consumed":Z
    const-string v3, "MSimPhoneGlobals"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleHeadsetHook(): consumed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on SUB ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-eqz v0, :cond_1

    .line 619
    iget-object v3, p0, Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/MSimPhoneGlobals;->updateInCallScreen()V

    .line 620
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 634
    .end local v0    # "consumed":Z
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 611
    .restart local v0    # "consumed":Z
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "consumed":Z
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 630
    const-string v3, "MSimPhoneGlobals"

    const-string v4, "MediaButtonBroadcastReceiver: consumed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {p0}, Lcom/android/phone/MSimPhoneGlobals$MSimMediaButtonBroadcastReceiver;->abortBroadcast()V

    goto :goto_1
.end method
