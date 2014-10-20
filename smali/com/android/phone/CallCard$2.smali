.class Lcom/android/phone/CallCard$2;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCard;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    # getter for: Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard$2;->this$0:Lcom/android/phone/CallCard;

    # getter for: Lcom/android/phone/CallCard;->mConferenceButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 366
    return-void
.end method
