.class public Lcom/android/phone/ExportContactsToSim;
.super Landroid/app/Activity;
.source "ExportContactsToSim.java"


# static fields
.field private static final COLUMN_NAMES:[Ljava/lang/String;


# instance fields
.field private mEmptyText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field protected mIsForeground:Z

.field private mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "emails"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ExportContactsToSim;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/ExportContactsToSim;->mResult:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ExportContactsToSim;->mIsForeground:Z

    .line 183
    new-instance v0, Lcom/android/phone/ExportContactsToSim$3;

    invoke-direct {v0, p0}, Lcom/android/phone/ExportContactsToSim$3;-><init>(Lcom/android/phone/ExportContactsToSim;)V

    iput-object v0, p0, Lcom/android/phone/ExportContactsToSim;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ExportContactsToSim;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/ExportContactsToSim;->getContactsContentCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ExportContactsToSim;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/ExportContactsToSim;->mResult:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/ExportContactsToSim;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/phone/ExportContactsToSim;->mResult:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/ExportContactsToSim;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/ExportContactsToSim;->populateContactDataFromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/ExportContactsToSim;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ExportContactsToSim;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/ExportContactsToSim;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/ExportContactsToSim;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method private displayProgress(Z)V
    .locals 3
    .param p1, "loading"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/ExportContactsToSim;->mEmptyText:Landroid/widget/TextView;

    const v1, 0x7f0d01aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 181
    return-void

    .line 178
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private doExportToSim()V
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/ExportContactsToSim;->displayProgress(Z)V

    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/ExportContactsToSim$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ExportContactsToSim$1;-><init>(Lcom/android/phone/ExportContactsToSim;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

.method private getContactsContentCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 119
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 120
    .local v1, "phoneBookContentUri":Landroid/net/Uri;
    const-string v3, "has_phone_number=\'1\' AND (account_type is NULL OR account_type !=?)"

    .line 122
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "SIM"

    aput-object v5, v4, v0

    .local v4, "selectionArg":[Ljava/lang/String;
    move-object v0, p0

    move-object v5, v2

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/ExportContactsToSim;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 126
    .local v6, "contactsCursor":Landroid/database/Cursor;
    return-object v6
.end method

.method private getUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 201
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    const-string v3, "sim_index"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, "subscription":I
    const-string v3, "ExportContactsToSim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " subscription : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-nez v2, :cond_0

    .line 206
    const-string v3, "content://iccmsim/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 214
    .end local v2    # "subscription":I
    :goto_0
    return-object v3

    .line 207
    .restart local v2    # "subscription":I
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 208
    const-string v3, "content://iccmsim/adn_sub2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 210
    :cond_1
    const-string v3, "ExportContactsToSim"

    const-string v4, "Invalid subcription"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v3, 0x0

    goto :goto_0

    .line 214
    .end local v2    # "subscription":I
    :cond_2
    const-string v3, "content://icc/adn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private populateContactDataFromCursor(Landroid/database/Cursor;)V
    .locals 11
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/phone/ExportContactsToSim;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 131
    .local v6, "uri":Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 132
    const-string v8, "ExportContactsToSim"

    const-string v9, " populateContactDataFromCursor: uri is null, return "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string v8, "display_name"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 138
    .local v2, "nameIdx":I
    const-string v8, "data1"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 142
    .local v4, "phoneIdx":I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "rawNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "number":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "tag"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v8, "number"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v8, "ExportContactsToSim"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 152
    .local v0, "contactUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 153
    const-string v8, "ExportContactsToSim"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to export contact to SIM for name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/phone/ExportContactsToSim;->mResult:I

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-boolean v1, p0, Lcom/android/phone/ExportContactsToSim;->mIsForeground:Z

    if-nez v1, :cond_0

    .line 161
    const-string v1, "ExportContactsToSim"

    const-string v2, "The activitiy is not in foreground. Do not display dialog!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 165
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v1, "Result..."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    const-string v1, "OK"

    new-instance v2, Lcom/android/phone/ExportContactsToSim$2;

    invoke-direct {v2, p0}, Lcom/android/phone/ExportContactsToSim$2;-><init>(Lcom/android/phone/ExportContactsToSim;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/ExportContactsToSim;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 77
    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Lcom/android/phone/ExportContactsToSim;->setContentView(I)V

    .line 78
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/phone/ExportContactsToSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/ExportContactsToSim;->mEmptyText:Landroid/widget/TextView;

    .line 79
    invoke-direct {p0}, Lcom/android/phone/ExportContactsToSim;->doExportToSim()V

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ExportContactsToSim;->mIsForeground:Z

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/ExportContactsToSim;->mIsForeground:Z

    .line 86
    return-void
.end method
