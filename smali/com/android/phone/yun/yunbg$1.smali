.class Lcom/android/phone/yun/yunbg$1;
.super Ljava/lang/Object;
.source "yunbg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/yun/yunbg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/yun/yunbg;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$handler2:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/phone/yun/yunbg;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/phone/yun/yunbg$1;->this$0:Lcom/android/phone/yun/yunbg;

    iput-object p2, p0, Lcom/android/phone/yun/yunbg$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/phone/yun/yunbg$1;->val$handler2:Landroid/os/Handler;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/phone/yun/yunbg$1;->this$0:Lcom/android/phone/yun/yunbg;

    iget-object v1, p0, Lcom/android/phone/yun/yunbg$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/phone/yun/yunbg;->update(Landroid/content/Context;)V

    .line 27
    iget-object v0, p0, Lcom/android/phone/yun/yunbg$1;->val$handler2:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method
