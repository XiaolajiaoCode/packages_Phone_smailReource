.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 252
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 326
    :goto_0
    return-void

    .line 257
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 258
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 262
    .local v3, "e":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/phone/FdnSetting$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 273
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0d01a7

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 277
    .end local v3    # "e":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)V

    goto :goto_0

    .line 266
    .restart local v3    # "e":Lcom/android/internal/telephony/CommandException$Error;
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0d01cb

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 267
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto :goto_1

    .line 270
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0d01a4

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1

    .line 287
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Lcom/android/internal/telephony/CommandException$Error;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 288
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_3

    .line 289
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 290
    .local v2, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_1

    .line 294
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d01cc

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 299
    .local v0, "a":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 301
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 305
    .end local v0    # "a":Landroid/app/AlertDialog;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mIsPuk2Locked:Z
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 306
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0d01c5

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 307
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 309
    :cond_2
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0d01c4

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 310
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 314
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # getter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 315
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0d01cf

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 321
    :goto_2
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    # invokes: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 317
    :cond_4
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0d01c9

    # invokes: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    goto :goto_2

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
