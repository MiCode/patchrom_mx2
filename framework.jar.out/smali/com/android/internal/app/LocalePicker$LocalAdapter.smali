.class public Lcom/android/internal/app/LocalePicker$LocalAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field am:Landroid/app/IActivityManager;

.field private mContext:Landroid/content/Context;

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 307
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 303
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePicker$LocalAdapter;->am:Landroid/app/IActivityManager;

    .line 308
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker$LocalAdapter;->mContext:Landroid/content/Context;

    .line 309
    iput p2, p0, Lcom/android/internal/app/LocalePicker$LocalAdapter;->mResource:I

    .line 310
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 315
    if-eqz p2, :cond_0

    .line 316
    move-object v7, p2

    .line 321
    .local v7, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker$LocalAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 322
    .local v5, localeInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const v8, 0x1020181

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 323
    .local v6, textView:Landroid/widget/TextView;
    const v8, 0x1020001

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 325
    .local v0, cBox:Landroid/widget/CheckBox;
    :try_start_0
    iget-object v8, v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v8, p0, Lcom/android/internal/app/LocalePicker$LocalAdapter;->am:Landroid/app/IActivityManager;

    invoke-interface {v8}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 327
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 328
    .local v4, locale:Ljava/util/Locale;
    iget-object v3, v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 329
    .local v3, l:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 330
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 337
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #l:Ljava/util/Locale;
    .end local v4           #locale:Ljava/util/Locale;
    :goto_1
    return-object v7

    .line 318
    .end local v0           #cBox:Landroid/widget/CheckBox;
    .end local v5           #localeInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v6           #textView:Landroid/widget/TextView;
    .end local v7           #view:Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/app/LocalePicker$LocalAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 319
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v8, p0, Lcom/android/internal/app/LocalePicker$LocalAdapter;->mResource:I

    invoke-virtual {v2, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .restart local v7       #view:Landroid/view/View;
    goto :goto_0

    .line 332
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .restart local v0       #cBox:Landroid/widget/CheckBox;
    .restart local v1       #config:Landroid/content/res/Configuration;
    .restart local v3       #l:Ljava/util/Locale;
    .restart local v4       #locale:Ljava/util/Locale;
    .restart local v5       #localeInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v6       #textView:Landroid/widget/TextView;
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 334
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #l:Ljava/util/Locale;
    .end local v4           #locale:Ljava/util/Locale;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 335
    :catch_1
    move-exception v8

    goto :goto_1
.end method
