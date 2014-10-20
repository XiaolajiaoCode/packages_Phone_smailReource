.class Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MSimMobileNetworkSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimMobileNetworkSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimMobileNetworkSubSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimMobileNetworkSubSettings;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSubSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimMobileNetworkSubSettings;Lcom/android/phone/MSimMobileNetworkSubSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MSimMobileNetworkSubSettings;
    .param p2, "x1"    # Lcom/android/phone/MSimMobileNetworkSubSettings$1;

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MSimMobileNetworkSubSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 775
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSubSettings;

    # getter for: Lcom/android/phone/MSimMobileNetworkSubSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/MSimMobileNetworkSubSettings;->access$700(Lcom/android/phone/MSimMobileNetworkSubSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 778
    .local v1, "phoneType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneType is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSubSettings;

    # getter for: Lcom/android/phone/MSimMobileNetworkSubSettings;->mSubscription:I
    invoke-static {v3}, Lcom/android/phone/MSimMobileNetworkSubSettings;->access$800(Lcom/android/phone/MSimMobileNetworkSubSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/MSimMobileNetworkSubSettings;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/MSimMobileNetworkSubSettings;->access$200(Ljava/lang/String;)V

    .line 779
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSubSettings;

    iget-object v2, v2, Lcom/android/phone/MSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSubSettings;

    iget-object v2, v2, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-nez v2, :cond_1

    .line 786
    .end local v1    # "phoneType":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSubSettings;

    # invokes: Lcom/android/phone/MSimMobileNetworkSubSettings;->setScreenState()V
    invoke-static {v2}, Lcom/android/phone/MSimMobileNetworkSubSettings;->access$900(Lcom/android/phone/MSimMobileNetworkSubSettings;)V

    .line 787
    return-void

    .line 781
    .restart local v1    # "phoneType":I
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSubSettings;

    iget-object v2, v2, Lcom/android/phone/MSimMobileNetworkSubSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSubSettings$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSubSettings;

    iget-object v2, v2, Lcom/android/phone/MSimMobileNetworkSubSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-nez v2, :cond_0

    goto :goto_0
.end method
