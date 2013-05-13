.class public Lcom/meizu/widget/RoundCornerContactBadge;
.super Landroid/widget/ImageView;
.source "RoundCornerContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/RoundCornerContactBadge$2;,
        Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;,
        Lcom/meizu/widget/RoundCornerContactBadge$IconType;,
        Lcom/meizu/widget/RoundCornerContactBadge$BorderType;
    }
.end annotation


# static fields
.field static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final ID_COLUMN_INDEX:I = 0x0

.field static final LOOKUPKEY_COLUMN_INDEX:I = 0x1

.field static final PHONE_COLUMN_INDEX:I = 0x2

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "RoundCornerContactBadge"

.field private static final TOKEN_CONTACT_LOOKUP_AND_TRIGGER:I = 0x4

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3

.field private static sAction:Ljava/lang/Runnable;

.field private static final sBorderTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field private static final sIconTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field private static sStartActivity:Z

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mContactEmail:Ljava/lang/String;

.field private mContactId:J

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mCornerRadius:F

.field private mCoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDstContactDrawable:Landroid/graphics/drawable/Drawable;

.field private mExtras:Landroid/os/Bundle;

.field private mIconText:Ljava/lang/CharSequence;

.field private mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field private mIsClickToCall:Z

.field private mIsUseStyle:Z

.field private mListCallIcon:Landroid/graphics/drawable/Drawable;

.field private mLongClick:Z

.field private mOffsetBottom:I

.field private mOffsetRight:I

.field private mOldContactId:J

.field private mOldExtras:Landroid/os/Bundle;

.field private mOldPhone:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

.field private mRectView:Landroid/graphics/Rect;

.field private mRecycle:Z

.field private mSmallIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUseCallIcon:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    sput-boolean v3, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    .line 116
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 121
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 127
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    const-string v1, "phone_number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 175
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_NULL:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sBorderTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 184
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_NULL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sIconTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 1258
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$1;

    invoke-direct {v0}, Lcom/meizu/widget/RoundCornerContactBadge$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sAction:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/RoundCornerContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/RoundCornerContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 66
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 68
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 71
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 72
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 73
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 74
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 75
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    .line 80
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    .line 81
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mUseCallIcon:Z

    .line 82
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z

    .line 209
    sget-object v3, Lcom/android/internal/R$styleable;->RoundCornerContactBadge:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 212
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_NULL:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    iget v4, v4, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->borderTypeInt:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 216
    .local v1, borderTypeIndex:I
    const/4 v3, 0x2

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_NULL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    iget v4, v4, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->iconTypeInt:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 220
    .local v2, iconTypeIndex:I
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge;->sBorderTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->setBorderType(Lcom/meizu/widget/RoundCornerContactBadge$BorderType;)V

    .line 226
    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge;->sIconTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->setIconType(Lcom/meizu/widget/RoundCornerContactBadge$IconType;)V

    .line 228
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->init()V

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/meizu/widget/RoundCornerContactBadge;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/meizu/widget/RoundCornerContactBadge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/RoundCornerContactBadge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/RoundCornerContactBadge;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/RoundCornerContactBadge;->queryPhoneNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/RoundCornerContactBadge;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->makeCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    return p0
.end method

.method static synthetic access$700()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->goContactDetail(Landroid/net/Uri;)V

    return-void
.end method

.method private drawContactDrawable()V
    .locals 15

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 696
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v6, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_1

    .line 697
    iget-object v9, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-direct {p0, v9}, Lcom/meizu/widget/RoundCornerContactBadge;->isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 707
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 708
    .local v11, dstWidth:I
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 709
    .local v10, dstHeight:I
    iget-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    if-eqz v6, :cond_2

    .line 710
    iget v11, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 711
    iget v10, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    :cond_2
    move-object v6, v9

    .line 714
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 715
    .local v0, contactBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 716
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 717
    .local v4, height:I
    const/4 v1, 0x0

    .line 718
    .local v1, cropLeft:I
    const/4 v2, 0x0

    .line 720
    .local v2, cropTop:I
    if-eq v3, v4, :cond_3

    .line 722
    if-le v4, v3, :cond_7

    .line 723
    sub-int v6, v4, v3

    div-int/lit8 v2, v6, 0x2

    .line 724
    move v4, v3

    .line 732
    :cond_3
    :goto_1
    int-to-float v6, v11

    int-to-float v14, v3

    div-float v13, v6, v14

    .line 733
    .local v13, scaleWidth:F
    int-to-float v6, v10

    int-to-float v14, v4

    div-float v12, v6, v14

    .line 734
    .local v12, scaleHeight:F
    move-object v7, v0

    .line 737
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/high16 v6, 0x3f80

    cmpl-float v6, v13, v6

    if-nez v6, :cond_4

    const/high16 v6, 0x3f80

    cmpl-float v6, v12, v6

    if-nez v6, :cond_4

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 738
    :cond_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 739
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 740
    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 744
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_5
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v7}, Lcom/meizu/widget/RoundCornerContactBadge;->getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v8, v6, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 745
    .local v8, contactIcon:Landroid/graphics/drawable/Drawable;
    iput-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 746
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    if-eq v7, v0, :cond_6

    .line 749
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 750
    const/4 v7, 0x0

    .line 753
    :cond_6
    iget-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    if-eqz v6, :cond_0

    .line 754
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 755
    const/4 v0, 0x0

    .line 756
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    goto/16 :goto_0

    .line 726
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #contactIcon:Landroid/graphics/drawable/Drawable;
    .end local v12           #scaleHeight:F
    .end local v13           #scaleWidth:F
    :cond_7
    sub-int v6, v3, v4

    div-int/lit8 v1, v6, 0x2

    .line 727
    move v3, v4

    goto :goto_1
.end method

.method private drawSmallIcon(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 783
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 784
    iget v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetBottom:I

    sub-int v8, v1, v3

    .line 786
    .local v8, offset:I
    new-instance v9, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v8

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v8

    invoke-direct {v9, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 790
    .local v9, rectIc:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 791
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 794
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    if-ne v1, v3, :cond_1

    .line 797
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 798
    .local v2, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    .line 799
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 801
    const/high16 v1, 0x41a0

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 802
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 803
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 806
    .local v0, textLayout:Landroid/text/StaticLayout;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 807
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 809
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v10, v10, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 810
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 811
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 814
    .end local v0           #textLayout:Landroid/text/StaticLayout;
    .end local v2           #textPaint:Landroid/text/TextPaint;
    .end local v8           #offset:I
    .end local v9           #rectIc:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method private getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 327
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$2;->$SwitchMap$com$meizu$widget$RoundCornerContactBadge$BorderType:[I

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    invoke-virtual {v2}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 349
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 353
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 329
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108069f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108069e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 335
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 338
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 340
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 343
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 762
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 764
    .local v1, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 765
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 766
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 767
    .local v3, rectF:Landroid/graphics/RectF;
    iget v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    .line 768
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 769
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 770
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 771
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 779
    :goto_0
    return-object v1

    .line 773
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 774
    iget v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    iget v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 775
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 776
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private goContactDetail(Landroid/net/Uri;)V
    .locals 4
    .parameter "lookupUri"

    .prologue
    .line 1076
    const/4 v1, 0x0

    .line 1077
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1079
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_5

    .line 1081
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1082
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1084
    const-string v2, "phone"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1108
    :cond_1
    const-string v2, "com.android.contacts.extra.TITLE_EXTRA"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1109
    const-string v2, "com.android.contacts.extra.SUB_TITLE_EXTRA"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1111
    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1113
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1114
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 1115
    const/high16 v2, 0x5000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1117
    :cond_3
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1118
    return-void

    .line 1086
    :cond_4
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1088
    const-string v2, "email"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1096
    const-string v2, "phone"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string v2, "vnd.android.cursor.item/phone_contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1099
    :cond_6
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1101
    const-string v2, "email"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v2, "vnd.android.cursor.item/email_contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 232
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 233
    new-instance v1, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;-><init>(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    .line 234
    invoke-virtual {p0, p0}, Lcom/meizu/widget/RoundCornerContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {p0, p0}, Lcom/meizu/widget/RoundCornerContactBadge;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setDuplicateParentStateEnabled(Z)V

    .line 238
    iget v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 240
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->setLayerType(ILandroid/graphics/Paint;)V

    .line 243
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    .line 244
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    .line 246
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 250
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 253
    .end local v0           #paint:Landroid/graphics/Paint;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    .line 255
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetBottom:I

    .line 257
    return-void
.end method

.method private isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .parameter "drawable"

    .prologue
    .line 357
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeCall(Ljava/lang/String;)V
    .locals 11
    .parameter "phone"

    .prologue
    .line 998
    sget-object v6, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 999
    :try_start_0
    sget-boolean v5, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    if-eqz v5, :cond_0

    .line 1000
    monitor-exit v6

    .line 1073
    :goto_0
    return-void

    .line 1003
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-1"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1007
    const/4 v1, 0x0

    .line 1009
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z

    if-eqz v5, :cond_a

    .line 1010
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    const/4 v4, 0x0

    .line 1012
    .local v4, telUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1014
    .local v2, prefixNumber:Ljava/lang/String;
    :try_start_1
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "prefix_dialing_number"

    invoke-static {v5, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 1021
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1022
    const-string v5, "tel"

    const/4 v7, 0x0

    invoke-static {v5, p1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1023
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1049
    .end local v2           #prefixNumber:Ljava/lang/String;
    .end local v4           #telUri:Landroid/net/Uri;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_1
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1050
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1051
    const-string v5, "android.telephony.HAS_CALLERINFO_FOR_MOCALL"

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1052
    const-string v5, "android.telephony.PERSON_ID_FOR_MOCALL"

    iget-wide v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    invoke-virtual {v1, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1060
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/meizu/internal/telephony/SpecialCharSequenceMgr;->isSpecialCharSequenceIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1061
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v7, "android.intent.action.CALL"

    if-eq v5, v7, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    if-ne v5, v7, :cond_3

    .line 1063
    :cond_2
    const/4 v5, 0x1

    sput-boolean v5, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    .line 1064
    sget-object v5, Lcom/meizu/widget/RoundCornerContactBadge;->sAction:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {p0, v5, v7, v8}, Lcom/meizu/widget/RoundCornerContactBadge;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1067
    :cond_3
    const/high16 v5, 0x1420

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1069
    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1072
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1017
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #prefixNumber:Ljava/lang/String;
    .restart local v4       #telUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1018
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    monitor-exit v6

    goto/16 :goto_0

    .line 1025
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const-string v3, ""

    .line 1026
    .local v3, tel:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1027
    move-object v3, p1

    .line 1034
    :goto_3
    const-string v5, "tel"

    const/4 v7, 0x0

    invoke-static {v5, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1035
    const-string v5, "112"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "911"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1036
    :cond_6
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 1028
    :cond_7
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1029
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "00"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1031
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1038
    :cond_9
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1042
    .end local v2           #prefixNumber:Ljava/lang/String;
    .end local v3           #tel:Ljava/lang/String;
    .end local v4           #telUri:Landroid/net/Uri;
    :cond_a
    const-string v5, "112"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "911"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1043
    :cond_b
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1045
    :cond_c
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 1054
    :cond_d
    const-string v5, "android.telephony.HAS_CALLERINFO_FOR_MOCALL"

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1055
    iget-wide v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    .line 1056
    const-string v5, "android.telephony.PERSON_ID_FOR_MOCALL"

    iget-wide v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    invoke-virtual {v1, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private queryPhoneNumber(J)Ljava/lang/String;
    .locals 12
    .parameter "contactId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1121
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1122
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1124
    .local v1, dataUri:Landroid/net/Uri;
    const/4 v9, 0x1

    .line 1125
    .local v9, phoneNumberIndex:I
    const/4 v7, 0x0

    .line 1126
    .local v7, phone:Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "data1"

    aput-object v3, v2, v10

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1130
    .local v8, phoneCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1132
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v10, :cond_1

    .line 1133
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    const-string v0, "is_super_primary"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1143
    :cond_1
    if-eqz v8, :cond_2

    .line 1144
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1147
    :cond_2
    return-object v7
.end method

.method private startQuery()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 965
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 970
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 971
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 972
    iget-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldContactId:J

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 973
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 975
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->makeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v1, "-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 980
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 984
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :cond_5
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 988
    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    const/4 v4, 0x4

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    sget-object v7, Lcom/meizu/widget/RoundCornerContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-virtual/range {v3 .. v10}, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 8
    .parameter "emailAddress"
    .parameter "lazyLookup"

    .prologue
    const/4 v5, 0x0

    .line 399
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    .line 400
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 402
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 403
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    .line 405
    if-nez p2, :cond_0

    .line 406
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_0
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "phoneNumber"
    .parameter "extras"

    .prologue
    const-wide/16 v2, 0x0

    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromPhone(Ljava/lang/String;ZJ)V

    .line 464
    if-eqz p2, :cond_0

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 466
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 467
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.PERSON_ID_FOR_MOCALL"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 469
    :cond_0
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 2
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    .line 458
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromPhone(Ljava/lang/String;ZJ)V

    .line 459
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;ZJ)V
    .locals 9
    .parameter "phoneNumber"
    .parameter "lazyLookup"
    .parameter "contactId"

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 423
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 424
    iput-wide p3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 425
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    .line 426
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 427
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    .line 429
    if-nez p2, :cond_0

    .line 430
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    :cond_1
    invoke-virtual {p0, v8}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickable(Z)V

    .line 441
    invoke-virtual {p0, v8}, Lcom/meizu/widget/RoundCornerContactBadge;->setLongClickable(Z)V

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_2
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickable(Z)V

    .line 444
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setLongClickable(Z)V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    const/4 v2, 0x0

    .line 382
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    .line 383
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 384
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    .line 385
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 386
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 387
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 8

    .prologue
    .line 874
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 875
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawableState()[I

    move-result-object v5

    .line 877
    .local v5, states:[I
    iget-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v6, :cond_5

    .line 878
    const/4 v4, 0x0

    .line 879
    .local v4, state_window_focused:Z
    const/4 v2, 0x0

    .line 880
    .local v2, state_enabled:Z
    const/4 v3, 0x0

    .line 881
    .local v3, state_pressed:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 882
    aget v6, v5, v1

    const v7, 0x101009d

    if-ne v6, v7, :cond_1

    .line 883
    const/4 v4, 0x1

    .line 881
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    :cond_1
    aget v6, v5, v1

    const v7, 0x101009e

    if-ne v6, v7, :cond_2

    .line 885
    const/4 v2, 0x1

    goto :goto_1

    .line 886
    :cond_2
    aget v6, v5, v1

    const v7, 0x10100a7

    if-ne v6, v7, :cond_0

    .line 887
    const/4 v3, 0x1

    goto :goto_1

    .line 891
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 892
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mUseCallIcon:Z

    .line 894
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 897
    .end local v1           #i:I
    .end local v2           #state_enabled:Z
    .end local v3           #state_pressed:Z
    .end local v4           #state_window_focused:Z
    :cond_5
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 898
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 899
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 900
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 902
    :cond_6
    return-void
.end method

.method public getBorderType()Lcom/meizu/widget/RoundCornerContactBadge$BorderType;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    return-object v0
.end method

.method public getIconType()Lcom/meizu/widget/RoundCornerContactBadge$IconType;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->startQuery()V

    .line 949
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 916
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 918
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 920
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 921
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 923
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 818
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 819
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 820
    .local v2, oldDstContact:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 821
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->drawContactDrawable()V

    .line 823
    if-eqz v2, :cond_0

    .line 824
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #oldDstContact:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 829
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 830
    .local v1, drawRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    sget-object v5, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    if-ne v4, v5, :cond_1

    .line 831
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 837
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 838
    .local v3, saveCount:I
    iget v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 841
    iget-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mUseCallIcon:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 842
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 843
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 868
    :goto_1
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 869
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mUseCallIcon:Z

    .line 870
    return-void

    .line 834
    .end local v3           #saveCount:I
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 846
    .restart local v3       #saveCount:I
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 847
    .local v0, contact:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 848
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 851
    iget-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 852
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 856
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 860
    :cond_3
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 861
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 862
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 865
    :cond_4
    invoke-direct {p0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->drawSmallIcon(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 485
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 486
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-super {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-super {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingBottom:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 489
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 955
    iget-boolean v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v1, :cond_0

    .line 956
    iput-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z

    .line 957
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->startQuery()V

    .line 961
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 473
    iget-boolean v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    if-eqz v2, :cond_0

    .line 474
    iget v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingRight:I

    add-int v1, v2, v3

    .line 475
    .local v1, width:I
    iget v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingBottom:I

    add-int v0, v2, v3

    .line 476
    .local v0, height:I
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 477
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 480
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 481
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    .line 929
    iget-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldContactId:J

    .line 930
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldExtras:Landroid/os/Bundle;

    .line 931
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 906
    if-eqz p1, :cond_0

    .line 907
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 908
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    .line 909
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    .line 912
    return-void

    .line 909
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBorderType(Lcom/meizu/widget/RoundCornerContactBadge$BorderType;)V
    .locals 8
    .parameter "borderType"

    .prologue
    const v7, 0x10802a9

    const v6, 0x10802a6

    const v5, 0x1050081

    const v4, 0x1050080

    const/4 v3, 0x0

    .line 584
    if-nez p1, :cond_0

    .line 585
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    if-ne v1, p1, :cond_1

    .line 670
    :goto_0
    return-void

    .line 592
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    .line 593
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 595
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 596
    .local v0, oldDefDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 597
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 598
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 604
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$2;->$SwitchMap$com$meizu$widget$RoundCornerContactBadge$BorderType:[I

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    invoke-virtual {v2}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 665
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 666
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 667
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    goto :goto_0

    .line 606
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 608
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 610
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 612
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 614
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 616
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 621
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 623
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 625
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 627
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 629
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 631
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 636
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 638
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 640
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 642
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 644
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 646
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 652
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 654
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 656
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 658
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 660
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 661
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setClickToCall(Z)V
    .locals 1
    .parameter "clickToCall"

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eq v0, p1, :cond_0

    .line 681
    iput-boolean p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    .line 682
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 684
    :cond_0
    return-void
.end method

.method public setIconText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    .line 497
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 499
    :cond_0
    return-void
.end method

.method public setIconType(Lcom/meizu/widget/RoundCornerContactBadge$IconType;)V
    .locals 2
    .parameter "iconType"

    .prologue
    .line 507
    if-nez p1, :cond_0

    .line 508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    if-ne v0, p1, :cond_1

    .line 572
    :goto_0
    return-void

    .line 515
    :cond_1
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 516
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge$2;->$SwitchMap$com$meizu$widget$RoundCornerContactBadge$IconType:[I

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    invoke-virtual {v1}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 571
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    goto :goto_0

    .line 518
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 523
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 528
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 533
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 538
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 543
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 548
    :pswitch_6
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 553
    :pswitch_7
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10807b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 558
    :pswitch_8
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080465

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 563
    :pswitch_9
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080464

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bm"
    .parameter "recycle"

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    iput-boolean p2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 317
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 320
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 323
    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 3
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 261
    if-nez p1, :cond_1

    .line 262
    invoke-virtual {p0, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 276
    if-nez p1, :cond_1

    .line 277
    invoke-virtual {p0, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 281
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 941
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .parameter "scaleType"

    .prologue
    .line 370
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSubtitle:Ljava/lang/CharSequence;

    .line 692
    return-void
.end method

.method public setTilte(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 687
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTitle:Ljava/lang/CharSequence;

    .line 688
    return-void
.end method
