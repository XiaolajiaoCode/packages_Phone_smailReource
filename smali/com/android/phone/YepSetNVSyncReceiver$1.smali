.class Lcom/android/phone/YepSetNVSyncReceiver$1;
.super Landroid/os/Handler;
.source "YepSetNVSyncReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/YepSetNVSyncReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/YepSetNVSyncReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/YepSetNVSyncReceiver;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/phone/YepSetNVSyncReceiver$1;->this$0:Lcom/android/phone/YepSetNVSyncReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 54
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 55
    .local v1, "success":Z
    :goto_1
    # getter for: Lcom/android/phone/YepSetNVSyncReceiver;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/YepSetNVSyncReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SET_NV_SYNC_DONE received success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v2, p0, Lcom/android/phone/YepSetNVSyncReceiver$1;->this$0:Lcom/android/phone/YepSetNVSyncReceiver;

    # invokes: Lcom/android/phone/YepSetNVSyncReceiver;->sendCommandComplete(Z)V
    invoke-static {v2, v1}, Lcom/android/phone/YepSetNVSyncReceiver;->access$100(Lcom/android/phone/YepSetNVSyncReceiver;Z)V

    goto :goto_0

    .line 54
    .end local v1    # "success":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
