.class public Lcom/android/internal/app/DockActionItem;
.super Ljava/lang/Object;
.source "DockActionItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/DockActionItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAI_FLAG_SHOWTEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DockActionBarService"

.field public static final TYPE_ACTION_MENU:I = 0x0

.field public static final TYPE_MORE_MENU:I = 0x2

.field public static final TYPE_SELECTION_BUTTON:I = 0x3

.field public static final TYPE_TAB_ITEM:I = 0x1


# instance fields
.field public mEnabled:Z

.field public mFlags:I

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconBmp:Landroid/graphics/Bitmap;

.field public mItemId:I

.field public mItemView:Landroid/view/View;

.field public mText:Ljava/lang/CharSequence;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/internal/app/DockActionItem$1;

    invoke-direct {v0}, Lcom/android/internal/app/DockActionItem$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/DockActionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/internal/app/DockActionItem;->mType:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/app/DockActionItem;->mEnabled:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/DockActionItem;->mFlags:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/DockActionItem;->mItemId:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    .line 56
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZI)V
    .locals 1
    .parameter "itemView"
    .parameter "id"
    .parameter "icon"
    .parameter "text"
    .parameter "enable"
    .parameter "flags"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/DockActionItem;->mType:I

    .line 36
    iput-object p1, p0, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    .line 37
    iput p2, p0, Lcom/android/internal/app/DockActionItem;->mItemId:I

    .line 38
    iput-object p3, p0, Lcom/android/internal/app/DockActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object p4, p0, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    .line 40
    iput-boolean p5, p0, Lcom/android/internal/app/DockActionItem;->mEnabled:Z

    .line 41
    iput p6, p0, Lcom/android/internal/app/DockActionItem;->mFlags:I

    .line 42
    return-void
.end method

.method private convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "icon"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 155
    .local v1, bounds:Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v6

    .line 156
    .local v4, width:I
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v6

    .line 157
    .local v3, height:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/android/internal/app/DockActionItem;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 99
    iget v1, p0, Lcom/android/internal/app/DockActionItem;->mItemId:I

    iget v2, p1, Lcom/android/internal/app/DockActionItem;->mItemId:I

    if-eq v1, v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    .line 122
    :cond_3
    iget v1, p0, Lcom/android/internal/app/DockActionItem;->mFlags:I

    iget v2, p1, Lcom/android/internal/app/DockActionItem;->mFlags:I

    if-ne v1, v2, :cond_0

    .line 126
    iget-boolean v1, p0, Lcom/android/internal/app/DockActionItem;->mEnabled:Z

    iget-boolean v2, p1, Lcom/android/internal/app/DockActionItem;->mEnabled:Z

    if-ne v1, v2, :cond_0

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 116
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public preparePracel()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/app/DockActionItem;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    .line 142
    .local v0, enableDrawingCache:Z
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 144
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    .line 145
    if-nez v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/internal/app/DockActionItem;->mItemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/android/internal/app/DockActionItem;->mEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/android/internal/app/DockActionItem;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/android/internal/app/DockActionItem;->mItemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/app/DockActionItem;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/app/DockActionItem;->mIconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 65
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
