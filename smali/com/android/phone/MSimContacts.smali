.class public Lcom/android/phone/MSimContacts;
.super Lcom/android/phone/SimContacts;
.source "MSimContacts.java"


# static fields
.field private static IMPORT_FROM_ALL:I


# instance fields
.field private mSimIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x8

    sput v0, Lcom/android/phone/MSimContacts;->IMPORT_FROM_ALL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/SimContacts;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/MSimContacts;->mSimIndex:I

    return-void
.end method

.method private isImportFromAllSelection()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/android/phone/MSimContacts;->mSimIndex:I

    sget v1, Lcom/android/phone/MSimContacts;->IMPORT_FROM_ALL:I

    if-ne v0, v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/android/phone/MSimContacts;->mSimIndex:I

    if-nez v0, :cond_0

    .line 77
    const-string v0, "content://iccmsim/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/android/phone/MSimContacts;->mSimIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 79
    const-string v0, "content://iccmsim/adn_sub2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "ADNList"

    const-string v1, "Invalid subcription"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 107
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_1

    move-object v0, p3

    .line 108
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 110
    .local v0, "itemInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 114
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0d0225

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 115
    invoke-direct {p0}, Lcom/android/phone/MSimContacts;->isImportFromAllSelection()Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    const/4 v2, 0x5

    const v3, 0x7f0d0349

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 117
    const/4 v2, 0x6

    const v3, 0x7f0d034a

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 118
    const/4 v2, 0x7

    const v3, 0x7f0d034c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 119
    const/16 v2, 0x8

    const v3, 0x7f0d034b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 124
    .end local v0    # "itemInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 121
    .restart local v0    # "itemInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v1    # "textView":Landroid/widget/TextView;
    :cond_2
    const-string v2, "MSimContacts"

    const-string v3, "Only import is supported"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/phone/SimContacts;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 96
    invoke-direct {p0}, Lcom/android/phone/MSimContacts;->isImportFromAllSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "MSimContacts"

    const-string v1, "Only import is supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 99
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 101
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/MSimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "sim_index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/phone/MSimContacts;->mSimIndex:I

    .line 55
    iget v2, p0, Lcom/android/phone/MSimContacts;->mSimIndex:I

    if-nez v2, :cond_1

    .line 56
    const-string v2, "content://iccmsim/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    :goto_0
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    const-string v2, "index"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 71
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 57
    :cond_1
    iget v2, p0, Lcom/android/phone/MSimContacts;->mSimIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 58
    const-string v2, "content://iccmsim/adn_sub2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 59
    :cond_2
    iget v2, p0, Lcom/android/phone/MSimContacts;->mSimIndex:I

    sget v3, Lcom/android/phone/MSimContacts;->IMPORT_FROM_ALL:I

    if-ne v2, v3, :cond_3

    .line 60
    const-string v2, "content://iccmsim/adn_all"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 62
    :cond_3
    const-string v2, "MSimContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: received invalid sub ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/MSimContacts;->mSimIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_4
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iput v5, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    goto :goto_1
.end method
