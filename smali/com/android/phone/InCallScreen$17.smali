.class Lcom/android/phone/InCallScreen$17;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->onModifyCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$conn:Lcom/android/internal/telephony/Connection;

.field final synthetic val$items:[Ljava/lang/CharSequence;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;[Ljava/lang/CharSequence;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .prologue
    .line 4395
    iput-object p1, p0, Lcom/android/phone/InCallScreen$17;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$17;->val$items:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/phone/InCallScreen$17;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p4, p0, Lcom/android/phone/InCallScreen$17;->val$conn:Lcom/android/internal/telephony/Connection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4397
    iget-object v2, p0, Lcom/android/phone/InCallScreen$17;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen$17;->val$items:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4399
    iget-object v2, p0, Lcom/android/phone/InCallScreen$17;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4402
    .local v1, "msg":Landroid/os/Message;
    packed-switch p2, :pswitch_data_0

    .line 4428
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4434
    :goto_1
    return-void

    .line 4404
    :pswitch_0
    const-string v2, "videocall"

    const-string v3, "ModifyCall called: upgrade to VT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4405
    iget-object v2, p0, Lcom/android/phone/InCallScreen$17;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$17;->val$conn:Lcom/android/internal/telephony/Connection;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4430
    :catch_0
    move-exception v0

    .line 4431
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "videocall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onModifyCall CallStateException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4410
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :pswitch_1
    :try_start_1
    const-string v2, "videocall"

    const-string v3, "ModifyCall called: upgrade to VT TX"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    iget-object v2, p0, Lcom/android/phone/InCallScreen$17;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$17;->val$conn:Lcom/android/internal/telephony/Connection;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V

    goto :goto_0

    .line 4416
    :pswitch_2
    const-string v2, "videocall"

    const-string v3, "ModifyCall called: upgrade to VT RX"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    iget-object v2, p0, Lcom/android/phone/InCallScreen$17;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$17;->val$conn:Lcom/android/internal/telephony/Connection;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V

    goto :goto_0

    .line 4422
    :pswitch_3
    const-string v2, "videocall"

    const-string v3, "ModifyCall called: downgrade to voice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4423
    iget-object v2, p0, Lcom/android/phone/InCallScreen$17;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$17;->val$conn:Lcom/android/internal/telephony/Connection;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/android/internal/telephony/Phone;->changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
