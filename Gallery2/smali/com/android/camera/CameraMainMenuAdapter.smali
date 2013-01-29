.class public Lcom/android/camera/CameraMainMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "CameraMainMenuAdapter.java"


# instance fields
.field private mCaptrueModeEntries:[Ljava/lang/String;

.field private mCaptrueModeEntryVaule:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurSel:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMeizuMMSIntent:Z

.field private mIsNoneAutoScense:Z

.field private mIsoEntries:[Ljava/lang/String;

.field private mIsoEntryVaule:[Ljava/lang/String;

.field private mItemData:[Ljava/lang/String;

.field private mItemTips:[Ljava/lang/String;

.field private mItemTispDefault:[Ljava/lang/String;

.field private mPref:Landroid/content/SharedPreferences;

.field private mScenseEntries:[Ljava/lang/String;

.field private mScenseEntryVaule:[Ljava/lang/String;

.field private mSelIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWBEntries:[Ljava/lang/String;

.field private mWBEntryVaule:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;II)V
    .locals 2
    .parameter "context"
    .parameter "pref"
    .parameter "resDataId"
    .parameter "resDefaultId"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsNoneAutoScense:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsMeizuMMSIntent:Z

    .line 35
    iput v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mCurSel:I

    .line 55
    iput-object p1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemData:[Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTispDefault:[Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/android/camera/CameraMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    .line 60
    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDeviceType()I

    move-result v0

    sget v1, Lcom/android/camera/CameraDeviceManager;->DEVICE_MX2:I

    if-ne v0, v1, :cond_1

    .line 62
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/camera/CameraMainMenuAdapter;->initItemTipsMX(I)V

    .line 64
    :cond_1
    return-void
.end method

.method private changeMXPicSizeTip(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 146
    const-string v0, "1280x960"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v0, "1M"

    .line 159
    :goto_0
    return-object v0

    .line 149
    :cond_0
    const-string v0, "2048x1536"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v0, "3M"

    goto :goto_0

    .line 152
    :cond_1
    const-string v0, "2560x1920"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v0, "5M"

    goto :goto_0

    .line 155
    :cond_2
    const-string v0, "3264x2448"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v0, "8M"

    goto :goto_0

    .line 159
    :cond_3
    const-string v0, "8M"

    goto :goto_0
.end method

.method private getEntry(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "vaule"
    .parameter "entry"
    .parameter "entryVaule"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 119
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v1

    .line 122
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 123
    aget-object v2, p3, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    aget-object v1, p2, v0

    goto :goto_0

    .line 122
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initItemTipsMX(I)V
    .locals 9
    .parameter "defaultId"

    .prologue
    const/4 v2, 0x5

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 67
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mCaptrueModeEntries:[Ljava/lang/String;

    .line 73
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mCaptrueModeEntryVaule:[Ljava/lang/String;

    .line 74
    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsoEntries:[Ljava/lang/String;

    .line 75
    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsoEntryVaule:[Ljava/lang/String;

    .line 76
    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mScenseEntries:[Ljava/lang/String;

    .line 77
    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mScenseEntryVaule:[Ljava/lang/String;

    .line 78
    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mWBEntries:[Ljava/lang/String;

    .line 79
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mWBEntryVaule:[Ljava/lang/String;

    .line 80
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    .line 82
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/CameraMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_capture_mode_key"

    const-string v4, "capture-normal"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mCaptrueModeEntries:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/CameraMainMenuAdapter;->mCaptrueModeEntryVaule:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/camera/CameraMainMenuAdapter;->getEntry(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 84
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/CameraMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_iso_key"

    const-string v4, "iso-auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsoEntries:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsoEntryVaule:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/camera/CameraMainMenuAdapter;->getEntry(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 86
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/CameraMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_scenemode_key"

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mScenseEntries:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/CameraMainMenuAdapter;->mScenseEntryVaule:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/android/camera/CameraMainMenuAdapter;->getEntry(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 88
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/CameraMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_camera_whitebalance_key"

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mWBEntries:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/CameraMainMenuAdapter;->mWBEntryVaule:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v8}, Lcom/android/camera/CameraMainMenuAdapter;->getEntry(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 90
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "pref_camera_picturesize_key"

    const-string v5, "3264x2448"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/CameraMainMenuAdapter;->changeMXPicSizeTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 91
    iget-object v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iput-boolean v6, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsNoneAutoScense:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 212
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelIndex()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mSelIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 245
    if-nez p2, :cond_0

    .line 246
    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040037

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 248
    :cond_0
    iget v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mCurSel:I

    if-ne v3, p1, :cond_2

    .line 249
    const v3, 0x7f020121

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    :goto_0
    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemData:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 254
    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 260
    :goto_1
    const v3, 0x7f0d00a2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    .local v0, t1:Landroid/widget/TextView;
    const v3, 0x7f0d00a3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 262
    .local v1, t2:Landroid/widget/TextView;
    const v3, 0x7f0d00a4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 263
    .local v2, v1:Landroid/view/View;
    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemData:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq p1, v3, :cond_1

    iget v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mCurSel:I

    if-ne v3, p1, :cond_4

    .line 264
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraMainMenuAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 269
    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTispDefault:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :goto_3
    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemData:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-object p2

    .line 251
    .end local v0           #t1:Landroid/widget/TextView;
    .end local v1           #t2:Landroid/widget/TextView;
    .end local v2           #v1:Landroid/view/View;
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_1

    .line 266
    .restart local v0       #t1:Landroid/widget/TextView;
    .restart local v1       #t2:Landroid/widget/TextView;
    .restart local v2       #v1:Landroid/view/View;
    :cond_4
    const v3, 0x7f02011e

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 272
    :cond_5
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v3, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 221
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    if-eq p1, v2, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v3, :cond_2

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsNoneAutoScense:Z

    if-eqz v1, :cond_4

    .line 226
    iget-boolean v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsMeizuMMSIntent:Z

    if-eqz v1, :cond_3

    .line 227
    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v3, :cond_0

    .line 240
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 231
    :cond_3
    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_2

    goto :goto_0

    .line 235
    :cond_4
    iget-boolean v1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsMeizuMMSIntent:Z

    if-eqz v1, :cond_2

    .line 236
    if-nez p1, :cond_2

    goto :goto_0
.end method

.method public setCurSel(I)V
    .locals 0
    .parameter "sel"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mCurSel:I

    .line 133
    return-void
.end method

.method public setIsAutoScense(Z)V
    .locals 0
    .parameter "isAuto"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsNoneAutoScense:Z

    .line 217
    return-void
.end method

.method public setIsMeizuMMSIntent(Z)V
    .locals 0
    .parameter "isMeizuMMSIntent"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/camera/CameraMainMenuAdapter;->mIsMeizuMMSIntent:Z

    .line 137
    return-void
.end method

.method public setItemTip(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "tip"

    .prologue
    .line 140
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 143
    :cond_0
    return-void
.end method

.method public setMXTipsStr(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "str"

    .prologue
    .line 195
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/camera/CameraMainMenuAdapter;->changeMXPicSizeTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraMainMenuAdapter;->mItemTips:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method
