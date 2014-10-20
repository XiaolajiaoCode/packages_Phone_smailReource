.class Lcom/android/phone/BluetoothPhoneService$1;
.super Landroid/os/Handler;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    const-string v2, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 182
    .local v1, "state":Landroid/telephony/ServiceState;
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothPhoneService;->access$100(Lcom/android/phone/BluetoothPhoneService;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 186
    .end local v1    # "state":Landroid/telephony/ServiceState;
    :pswitch_1
    const/4 v0, 0x0

    .line 187
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 190
    .restart local v0    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v2, v0}, Lcom/android/phone/BluetoothPhoneService;->access$200(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 193
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleListCurrentCalls()V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$300(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 196
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleQueryPhoneState()V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$400(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 199
    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallState()V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$500(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 202
    :pswitch_5
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V
    invoke-static {v3, v2}, Lcom/android/phone/BluetoothPhoneService;->access$600(Lcom/android/phone/BluetoothPhoneService;Z)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
