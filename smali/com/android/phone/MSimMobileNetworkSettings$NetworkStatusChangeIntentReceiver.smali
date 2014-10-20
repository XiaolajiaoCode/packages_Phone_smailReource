.class Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MSimMobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimMobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatusChangeIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimMobileNetworkSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimMobileNetworkSettings;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimMobileNetworkSettings;Lcom/android/phone/MSimMobileNetworkSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MSimMobileNetworkSettings;
    .param p2, "x1"    # Lcom/android/phone/MSimMobileNetworkSettings$1;

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;-><init>(Lcom/android/phone/MSimMobileNetworkSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "actionStr":Ljava/lang/String;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSettings;

    # getter for: Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/MSimMobileNetworkSettings;->access$200(Lcom/android/phone/MSimMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSettings;

    # getter for: Lcom/android/phone/MSimMobileNetworkSettings;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/MSimMobileNetworkSettings;->access$100(Lcom/android/phone/MSimMobileNetworkSettings;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSettings$NetworkStatusChangeIntentReceiver;->this$0:Lcom/android/phone/MSimMobileNetworkSettings;

    # invokes: Lcom/android/phone/MSimMobileNetworkSettings;->setScreenState()V
    invoke-static {v1}, Lcom/android/phone/MSimMobileNetworkSettings;->access$300(Lcom/android/phone/MSimMobileNetworkSettings;)V

    goto :goto_0
.end method
