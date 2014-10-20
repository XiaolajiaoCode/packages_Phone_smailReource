.class Lcom/android/phone/XDivertPhoneNumbers$3;
.super Ljava/lang/Object;
.source "XDivertPhoneNumbers.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/XDivertPhoneNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/XDivertPhoneNumbers;


# direct methods
.method constructor <init>(Lcom/android/phone/XDivertPhoneNumbers;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 155
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    # getter for: Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$000(Lcom/android/phone/XDivertPhoneNumbers;)[Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    # getter for: Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$000(Lcom/android/phone/XDivertPhoneNumbers;)[Landroid/widget/EditText;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    # getter for: Lcom/android/phone/XDivertPhoneNumbers;->mLine1Numbers:[Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$000(Lcom/android/phone/XDivertPhoneNumbers;)[Landroid/widget/EditText;

    move-result-object v1

    aget-object v1, v1, v3

    if-ne p1, v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    # getter for: Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$100(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    # getter for: Lcom/android/phone/XDivertPhoneNumbers;->mButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$100(Lcom/android/phone/XDivertPhoneNumbers;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    # invokes: Lcom/android/phone/XDivertPhoneNumbers;->isValidNumbers()Z
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$200(Lcom/android/phone/XDivertPhoneNumbers;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    invoke-virtual {v1}, Lcom/android/phone/XDivertPhoneNumbers;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0239

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 164
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 166
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/XDivertPhoneNumbers$3;->this$0:Lcom/android/phone/XDivertPhoneNumbers;

    # invokes: Lcom/android/phone/XDivertPhoneNumbers;->processXDivert()V
    invoke-static {v1}, Lcom/android/phone/XDivertPhoneNumbers;->access$300(Lcom/android/phone/XDivertPhoneNumbers;)V

    goto :goto_0
.end method
