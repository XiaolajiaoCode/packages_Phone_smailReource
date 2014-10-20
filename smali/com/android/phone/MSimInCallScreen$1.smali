.class Lcom/android/phone/MSimInCallScreen$1;
.super Landroid/os/Handler;
.source "MSimInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimInCallScreen;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-boolean v3, v3, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler: ignoring message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; we\'re destroyed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/MSimInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/MSimInCallScreen;->access$000(Lcom/android/phone/MSimInCallScreen;Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-boolean v3, v3, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v3, :cond_2

    .line 64
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler: handling message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while not in foreground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/MSimInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/MSimInCallScreen;->access$000(Lcom/android/phone/MSimInCallScreen;Ljava/lang/String;)V

    .line 72
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 137
    const-string v3, "MSimInCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHandler: unexpected message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :sswitch_0
    iget-object v4, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {v4, v3}, Lcom/android/phone/MSimInCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 78
    :sswitch_1
    iget-object v4, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {v4, v3}, Lcom/android/phone/MSimInCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 82
    :sswitch_2
    iget-object v4, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {v4, v3}, Lcom/android/phone/MSimInCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 92
    :sswitch_3
    iget-object v4, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v3}, Lcom/android/phone/MSimInCallScreen;->onMMICancel(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 100
    :sswitch_4
    iget-object v4, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    invoke-virtual {v4, v3}, Lcom/android/phone/MSimInCallScreen;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V

    goto :goto_0

    .line 104
    :sswitch_5
    iget-object v4, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget v5, p1, Landroid/os/Message;->arg1:I

    int-to-char v5, v5

    invoke-virtual {v4, v3, v5}, Lcom/android/phone/MSimInCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 108
    :sswitch_6
    iget-object v4, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4, v3}, Lcom/android/phone/MSimInCallScreen;->delayedCleanupAfterDisconnect(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_0

    .line 113
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 114
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 115
    .local v2, "subscription":I
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    const-string v4, "Received PHONE_CDMA_CALL_WAITING event ..."

    # invokes: Lcom/android/phone/MSimInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/MSimInCallScreen;->access$000(Lcom/android/phone/MSimInCallScreen;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-object v3, v3, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 120
    .local v1, "cn":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/MSimInCallScreen;->updateScreen()V

    .line 124
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    iget-object v3, v3, Lcom/android/phone/InCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    goto/16 :goto_0

    .line 129
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v2    # "subscription":I
    :sswitch_8
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/MSimInCallScreen;->onIncomingRing()V

    goto/16 :goto_0

    .line 133
    :sswitch_9
    iget-object v3, p0, Lcom/android/phone/MSimInCallScreen$1;->this$0:Lcom/android/phone/MSimInCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/MSimInCallScreen;->onNewRingingConnection()V

    goto/16 :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_4
        0x35 -> :sswitch_3
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x68 -> :sswitch_5
        0x6c -> :sswitch_6
        0x6e -> :sswitch_0
        0x73 -> :sswitch_7
        0x7b -> :sswitch_8
        0x7c -> :sswitch_9
    .end sparse-switch
.end method
