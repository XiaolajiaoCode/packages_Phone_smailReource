.class Lcom/android/phone/InCallScreen$18;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->handleModifyCallRequest(Lcom/android/internal/telephony/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$conn:Lcom/android/internal/telephony/Connection;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;)V
    .locals 0

    .prologue
    .line 5074
    iput-object p1, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$18;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/android/phone/InCallScreen$18;->val$conn:Lcom/android/internal/telephony/Connection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 5078
    iget-object v1, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    const-string v2, "videocall: MODIFY_CALL_PROMPT_CANCELED!"

    # invokes: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 5080
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen$18;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/InCallScreen$18;->val$conn:Lcom/android/internal/telephony/Connection;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5085
    :goto_0
    return-void

    .line 5081
    :catch_0
    move-exception v0

    .line 5082
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videocall: Exception acceptConnectionTypeChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
