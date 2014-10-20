.class Lcom/android/phone/SetSubscription$AirplaneModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SetSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SetSubscription;


# direct methods
.method private constructor <init>(Lcom/android/phone/SetSubscription;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/phone/SetSubscription$AirplaneModeBroadcastReceiver;->this$0:Lcom/android/phone/SetSubscription;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SetSubscription;Lcom/android/phone/SetSubscription$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/SetSubscription;
    .param p2, "x1"    # Lcom/android/phone/SetSubscription$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/phone/SetSubscription$AirplaneModeBroadcastReceiver;-><init>(Lcom/android/phone/SetSubscription;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/phone/SetSubscription$AirplaneModeBroadcastReceiver;->this$0:Lcom/android/phone/SetSubscription;

    # invokes: Lcom/android/phone/SetSubscription;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/android/phone/SetSubscription;->access$100(Lcom/android/phone/SetSubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "SetSubscription"

    const-string v2, "Airplane mode is: on "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/phone/SetSubscription$AirplaneModeBroadcastReceiver;->this$0:Lcom/android/phone/SetSubscription;

    invoke-virtual {v1}, Lcom/android/phone/SetSubscription;->finish()V

    .line 163
    :cond_0
    return-void
.end method
