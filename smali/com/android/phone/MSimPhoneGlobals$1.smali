.class Lcom/android/phone/MSimPhoneGlobals$1;
.super Landroid/os/Handler;
.source "MSimPhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MSimPhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimPhoneGlobals;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/phone/MSimPhoneGlobals$1;->this$0:Lcom/android/phone/MSimPhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 698
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 700
    :pswitch_0
    const-string v2, "MSimPhoneGlobals"

    const-string v3, "set dds done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 702
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 703
    const-string v2, "MSimPhoneGlobals"

    const-string v3, "exception occur"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 706
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 707
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 709
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 710
    const-string v2, "MSimPhoneGlobals"

    const-string v3, "dds to SUB1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/codeaurora/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
