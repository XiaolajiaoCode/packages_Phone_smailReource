.class final Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "MSimPhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimPhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimPhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSimPhoneInterfaceManager;Lcom/android/phone/MSimPhoneInterfaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MSimPhoneInterfaceManager;
    .param p2, "x1"    # Lcom/android/phone/MSimPhoneInterfaceManager$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget-object v11, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    invoke-virtual {v11}, Lcom/android/phone/MSimPhoneInterfaceManager;->getDefaultSubscription()I

    move-result v8

    .line 119
    .local v8, "sub":I
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 225
    :pswitch_0
    const-string v11, "MSimPhoneInterfaceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 121
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 122
    .local v5, "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->argument2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 123
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 124
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    const-string v11, "MSimPhoneInterfaceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_HANDLE_PIN_MMI: sub :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-interface {v3, v11}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 128
    monitor-enter v5

    .line 129
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 130
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 134
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 135
    .restart local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/4 v11, 0x3

    invoke-virtual {p0, v11, v5}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 137
    .local v2, "onCompleted":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v11, v11, Lcom/android/phone/MSimPhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11, v2}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .line 141
    .end local v2    # "onCompleted":Landroid/os/Message;
    .end local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 142
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 143
    .restart local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_0

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v11, :cond_0

    .line 144
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 150
    :goto_1
    monitor-enter v5

    .line 151
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v11

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v11

    .line 147
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 156
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    iget-object v11, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    # invokes: Lcom/android/phone/MSimPhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v11}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$000(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 160
    :pswitch_5
    iget-object v11, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    # invokes: Lcom/android/phone/MSimPhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v11}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$100(Lcom/android/phone/MSimPhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 164
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 165
    .restart local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    const/4 v1, 0x0

    .line 166
    .local v1, "hungUp":Z
    iget-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 167
    iget-object v11, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ending call on subscription ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$200(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;)V

    .line 168
    iget-object v11, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v11, v11, Lcom/android/phone/MSimPhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v11, v8}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 169
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 170
    .local v4, "phoneType":I
    const/4 v11, 0x2

    if-ne v4, v11, :cond_1

    .line 173
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 180
    :goto_2
    iget-object v12, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CMD_END_CALL: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v1, :cond_3

    const-string v11, "hung up!"

    :goto_3
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/MSimPhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v12, v11}, Lcom/android/phone/MSimPhoneInterfaceManager;->access$200(Lcom/android/phone/MSimPhoneInterfaceManager;Ljava/lang/String;)V

    .line 181
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 183
    monitor-enter v5

    .line 184
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 185
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v11

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v11

    .line 174
    :cond_1
    const/4 v11, 0x1

    if-ne v4, v11, :cond_2

    .line 176
    iget-object v11, p0, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/MSimPhoneInterfaceManager;

    iget-object v11, v11, Lcom/android/phone/MSimPhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    goto :goto_2

    .line 178
    :cond_2
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 180
    :cond_3
    const-string v11, "no call to hang up"

    goto :goto_3

    .line 189
    .end local v1    # "hungUp":Z
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneType":I
    .end local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 190
    .restart local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 191
    .local v10, "subscription":I
    const/16 v11, 0xf

    invoke-virtual {p0, v11, v5}, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 192
    .restart local v2    # "onCompleted":Landroid/os/Message;
    invoke-static {}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->getInstance()Lcom/codeaurora/telephony/msim/SubscriptionManager;

    move-result-object v9

    .line 193
    .local v9, "subManager":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    if-eqz v9, :cond_4

    .line 194
    invoke-virtual {v9, v10, v2}, Lcom/codeaurora/telephony/msim/SubscriptionManager;->setDataSubscription(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 198
    :cond_4
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 199
    monitor-enter v5

    .line 200
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 201
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v11

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v11

    .line 206
    .end local v2    # "onCompleted":Landroid/os/Message;
    .end local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    .end local v9    # "subManager":Lcom/codeaurora/telephony/msim/SubscriptionManager;
    .end local v10    # "subscription":I
    :pswitch_8
    const/4 v7, 0x0

    .line 207
    .local v7, "retStatus":Z
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;

    .line 210
    .restart local v5    # "request":Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_5

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v11, :cond_5

    .line 211
    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 212
    .local v6, "result":Z
    if-eqz v6, :cond_5

    .line 213
    const/4 v7, 0x1

    .line 216
    .end local v6    # "result":Z
    :cond_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v5, Lcom/android/phone/MSimPhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 219
    monitor-enter v5

    .line 220
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 221
    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v11

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v11

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
