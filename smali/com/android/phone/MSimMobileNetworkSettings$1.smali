.class Lcom/android/phone/MSimMobileNetworkSettings$1;
.super Landroid/database/ContentObserver;
.source "MSimMobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimMobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimMobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimMobileNetworkSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/phone/MSimMobileNetworkSettings$1;->this$0:Lcom/android/phone/MSimMobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/MSimMobileNetworkSettings$1;->this$0:Lcom/android/phone/MSimMobileNetworkSettings;

    # getter for: Lcom/android/phone/MSimMobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/MSimMobileNetworkSettings;->access$200(Lcom/android/phone/MSimMobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MSimMobileNetworkSettings$1;->this$0:Lcom/android/phone/MSimMobileNetworkSettings;

    # getter for: Lcom/android/phone/MSimMobileNetworkSettings;->mConnManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/phone/MSimMobileNetworkSettings;->access$100(Lcom/android/phone/MSimMobileNetworkSettings;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 309
    return-void
.end method
