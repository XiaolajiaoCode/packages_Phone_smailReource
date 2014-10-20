.class public Lcom/android/phone/yun/yunbg;
.super Landroid/widget/FrameLayout;
.source "yunbg.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/android/phone/yun/yunbg;->blur(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/yun/yunbg;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 23
    .local v1, "handler2":Landroid/os/Handler;
    new-instance v2, Lcom/android/phone/yun/yunbg$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/phone/yun/yunbg$1;-><init>(Lcom/android/phone/yun/yunbg;Landroid/content/Context;Landroid/os/Handler;)V

    .line 32
    .local v2, "runnable":Ljava/lang/Runnable;
    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    return-void
.end method

.method private blur(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    .line 41
    .local v9, "wallpaperManager":Landroid/app/WallpaperManager;
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 42
    .local v8, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/high16 v7, 0x41900000

    .line 44
    .local v7, "scaleFactor":F
    const/high16 v6, 0x40800000

    .line 45
    .local v6, "radius":F
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 47
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v10, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 48
    .local v10, "width":I
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 49
    .local v3, "height":I
    int-to-float v11, v10

    div-float/2addr v11, v7

    float-to-int v11, v11

    .line 50
    int-to-float v12, v3

    div-float/2addr v12, v7

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 49
    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 51
    .local v4, "overlay":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/high16 v11, 0x3f800000

    div-float/2addr v11, v7

    const/high16 v12, 0x3f800000

    div-float/2addr v12, v7

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 53
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setFlags(I)V

    .line 55
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v11, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    float-to-int v11, v6

    const/4 v12, 0x1

    invoke-static {v4, v11, v12}, Lcom/android/phone/yun/FastBlur;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 57
    return-object v4
.end method


# virtual methods
.method public update(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/phone/yun/yunbg;->blur(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/yun/yunbg;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method
