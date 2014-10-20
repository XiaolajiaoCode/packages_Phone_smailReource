.class Lcom/android/phone/OutgoingCallBroadcaster$5;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$5;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 951
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$5;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 961
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SelectSubscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string v1, "PACKAGE"

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    const-string v1, "TARGET_CLASS"

    const-string v2, "com.android.phone.MSimCallFeaturesSubSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 966
    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster$5;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mSubscription:I
    invoke-static {v2}, Lcom/android/phone/OutgoingCallBroadcaster;->access$400(Lcom/android/phone/OutgoingCallBroadcaster;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 968
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$5;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 969
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$5;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 970
    return-void
.end method
