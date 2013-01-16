.class public Lcom/meizu/widget/RoundCornerContactBadge;
.super Landroid/widget/ImageView;
.source "RoundCornerContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/RoundCornerContactBadge$3;,
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
.field private mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallIntent:Landroid/content/Intent;

.field private mContactEmail:Ljava/lang/String;

.field private mContactId:J

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mCornerRadius:F

.field private mCoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDstContactDrawable:Landroid/graphics/drawable/Drawable;

.field private mExtras:Landroid/os/Bundle;

.field private mHangupCallAnim:Landroid/view/animation/Animation;

.field private mIconText:Ljava/lang/CharSequence;

.field private mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

.field private mIsClickToCall:Z

.field private mIsUseStyle:Z

.field private mListCallIcon:Landroid/graphics/drawable/Drawable;

.field private mLongClick:Z

.field private mMakeCallAnim:Landroid/view/animation/Animation;

.field private mOffsetBottom:I

.field private mOffsetRight:I

.field private mOldContactId:J

.field private mOldExtras:Landroid/os/Bundle;

.field private mOldPhone:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

.field private mRectView:Landroid/graphics/Rect;

.field private mRecycle:Z

.field private mSmallIcon:Landroid/graphics/drawable/Drawable;

.field private mTransformation:Landroid/view/animation/Transformation;

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

    .line 112
    sput-boolean v3, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    .line 122
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 127
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 133
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    const-string v1, "phone_number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 181
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

    .line 190
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

    .line 1298
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$1;

    invoke-direct {v0}, Lcom/meizu/widget/RoundCornerContactBadge$1;-><init>()V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sAction:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/RoundCornerContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/RoundCornerContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
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

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 70
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 72
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 75
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 76
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 77
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 78
    iput v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 79
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    .line 84
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    .line 85
    iput-boolean v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z

    .line 1309
    new-instance v3, Lcom/meizu/widget/RoundCornerContactBadge$2;

    invoke-direct {v3, p0}, Lcom/meizu/widget/RoundCornerContactBadge$2;-><init>(Lcom/meizu/widget/RoundCornerContactBadge;)V

    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 215
    sget-object v3, Lcom/android/internal/R$styleable;->RoundCornerContactBadge:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_NULL:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    iget v4, v4, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->borderTypeInt:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 222
    .local v1, borderTypeIndex:I
    const/4 v3, 0x2

    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->IC_NULL:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    iget v4, v4, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->iconTypeInt:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 226
    .local v2, iconTypeIndex:I
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    .line 229
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge;->sBorderTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->setBorderType(Lcom/meizu/widget/RoundCornerContactBadge$BorderType;)V

    .line 232
    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge;->sIconTypeArray:[Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->setIconType(Lcom/meizu/widget/RoundCornerContactBadge$IconType;)V

    .line 234
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->init()V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/meizu/widget/RoundCornerContactBadge;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/meizu/widget/RoundCornerContactBadge;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/widget/RoundCornerContactBadge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/widget/RoundCornerContactBadge;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/RoundCornerContactBadge;->queryPhoneNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/RoundCornerContactBadge;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->makeCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    return p0
.end method

.method static synthetic access$700()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge;->sAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->goContactDetail(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/widget/RoundCornerContactBadge;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private drawContactDrawable()V
    .locals 15

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 719
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v6, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_1

    .line 720
    iget-object v9, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    invoke-direct {p0, v9}, Lcom/meizu/widget/RoundCornerContactBadge;->isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 730
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 731
    .local v11, dstWidth:I
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 732
    .local v10, dstHeight:I
    iget-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    if-eqz v6, :cond_2

    .line 733
    iget v11, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 734
    iget v10, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    :cond_2
    move-object v6, v9

    .line 737
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 738
    .local v0, contactBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 739
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 740
    .local v4, height:I
    const/4 v1, 0x0

    .line 741
    .local v1, cropLeft:I
    const/4 v2, 0x0

    .line 743
    .local v2, cropTop:I
    if-eq v3, v4, :cond_3

    .line 745
    if-le v4, v3, :cond_7

    .line 746
    sub-int v6, v4, v3

    div-int/lit8 v2, v6, 0x2

    .line 747
    move v4, v3

    .line 755
    :cond_3
    :goto_1
    int-to-float v6, v11

    int-to-float v14, v3

    div-float v13, v6, v14

    .line 756
    .local v13, scaleWidth:F
    int-to-float v6, v10

    int-to-float v14, v4

    div-float v12, v6, v14

    .line 757
    .local v12, scaleHeight:F
    move-object v7, v0

    .line 760
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/high16 v6, 0x3f80

    cmpl-float v6, v13, v6

    if-nez v6, :cond_4

    const/high16 v6, 0x3f80

    cmpl-float v6, v12, v6

    if-nez v6, :cond_4

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 761
    :cond_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 762
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 763
    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 767
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_5
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v7}, Lcom/meizu/widget/RoundCornerContactBadge;->getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v8, v6, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 768
    .local v8, contactIcon:Landroid/graphics/drawable/Drawable;
    iput-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 769
    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 771
    if-eq v7, v0, :cond_6

    .line 772
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 773
    const/4 v7, 0x0

    .line 776
    :cond_6
    iget-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    if-eqz v6, :cond_0

    .line 777
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 778
    const/4 v0, 0x0

    .line 779
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    goto/16 :goto_0

    .line 749
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #contactIcon:Landroid/graphics/drawable/Drawable;
    .end local v12           #scaleHeight:F
    .end local v13           #scaleWidth:F
    :cond_7
    sub-int v6, v3, v4

    div-int/lit8 v1, v6, 0x2

    .line 750
    move v3, v4

    goto :goto_1
.end method

.method private drawSmallIcon(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 806
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    sget-object v3, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 807
    iget v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetBottom:I

    sub-int v8, v1, v3

    .line 809
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

    .line 813
    .local v9, rectIc:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 814
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 817
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

    .line 820
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 821
    .local v2, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v2, Landroid/text/TextPaint;->density:F

    .line 822
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 824
    const/high16 v1, 0x41a0

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 825
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 826
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 829
    .local v0, textLayout:Landroid/text/StaticLayout;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 830
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

    .line 832
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v10, v10, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 833
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 834
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 837
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
    .line 335
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$3;->$SwitchMap$com$meizu$widget$RoundCornerContactBadge$BorderType:[I

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    invoke-virtual {v2}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 357
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 361
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 337
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080675

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080674

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 343
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 346
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 348
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 351
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 353
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 335
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

    .line 785
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 787
    .local v1, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 788
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v8, v8, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 789
    .local v2, rect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 790
    .local v3, rectF:Landroid/graphics/RectF;
    iget v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_0

    .line 791
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 792
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 793
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 794
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 802
    :goto_0
    return-object v1

    .line 796
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 797
    iget v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    iget v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 798
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 799
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private goContactDetail(Landroid/net/Uri;)V
    .locals 4
    .parameter "lookupUri"

    .prologue
    .line 1121
    const/4 v1, 0x0

    .line 1122
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_3

    .line 1124
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1125
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1127
    const-string v2, "phone"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    :cond_0
    :goto_0
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1154
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 1155
    const/high16 v2, 0x5000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1157
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1158
    return-void

    .line 1129
    :cond_2
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1131
    const-string v2, "email"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1136
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1137
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1138
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1140
    const-string v2, "phone"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v2, "vnd.android.cursor.item/phone_contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    :cond_4
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 1143
    :cond_5
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1145
    const-string v2, "email"

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v2, "android.intent.action.INSERT"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v2, "vnd.android.cursor.item/email_contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 238
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 239
    new-instance v1, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;-><init>(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mQueryHandler:Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;

    .line 240
    invoke-virtual {p0, p0}, Lcom/meizu/widget/RoundCornerContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual {p0, p0}, Lcom/meizu/widget/RoundCornerContactBadge;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setDuplicateParentStateEnabled(Z)V

    .line 244
    iget v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->setLayerType(ILandroid/graphics/Paint;)V

    .line 249
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    .line 250
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaint:Landroid/graphics/Paint;

    .line 251
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPath:Landroid/graphics/Path;

    .line 252
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTransformation:Landroid/view/animation/Transformation;

    .line 254
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 256
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 258
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 261
    .end local v0           #paint:Landroid/graphics/Paint;
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    .line 263
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetBottom:I

    .line 265
    return-void
.end method

.method private isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .parameter "drawable"

    .prologue
    .line 365
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

    .line 367
    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeCall(Ljava/lang/String;)V
    .locals 10
    .parameter "phone"

    .prologue
    .line 1045
    sget-object v5, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1046
    :try_start_0
    sget-boolean v4, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    if-eqz v4, :cond_0

    .line 1047
    monitor-exit v5

    .line 1118
    :goto_0
    return-void

    .line 1050
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "-2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "-3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1054
    iget-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z

    if-eqz v4, :cond_a

    .line 1055
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    const/4 v3, 0x0

    .line 1057
    .local v3, telUri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1059
    .local v1, prefixNumber:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "prefix_dialing_number"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1066
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1067
    const-string v4, "tel"

    const/4 v6, 0x0

    invoke-static {v4, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1068
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    .line 1094
    .end local v1           #prefixNumber:Ljava/lang/String;
    .end local v3           #telUri:Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1095
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1096
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    const-string v6, "android.telephony.HAS_CALLERINFO_FOR_MOCALL"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1097
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    const-string v6, "android.telephony.PERSON_ID_FOR_MOCALL"

    iget-wide v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1105
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    invoke-static {v4, v6}, Lcom/meizu/internal/telephony/SpecialCharSequenceMgr;->isSpecialCharSequenceIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1106
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.intent.action.CALL"

    if-eq v4, v6, :cond_2

    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    if-ne v4, v6, :cond_3

    .line 1108
    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    .line 1109
    sget-object v4, Lcom/meizu/widget/RoundCornerContactBadge;->sAction:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {p0, v4, v6, v7}, Lcom/meizu/widget/RoundCornerContactBadge;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1112
    :cond_3
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    const/high16 v6, 0x1420

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1114
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->startMakeCallAnim()V

    .line 1117
    :cond_4
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1062
    .restart local v1       #prefixNumber:Ljava/lang/String;
    .restart local v3       #telUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1063
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    monitor-exit v5

    goto/16 :goto_0

    .line 1070
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const-string v2, ""

    .line 1071
    .local v2, tel:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1072
    move-object v2, p1

    .line 1079
    :goto_3
    const-string v4, "tel"

    const/4 v6, 0x0

    invoke-static {v4, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1080
    const-string v4, "112"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "911"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1081
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 1073
    :cond_7
    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "00"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1076
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1083
    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 1087
    .end local v1           #prefixNumber:Ljava/lang/String;
    .end local v2           #tel:Ljava/lang/String;
    .end local v3           #telUri:Landroid/net/Uri;
    :cond_a
    const-string v4, "112"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "911"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1088
    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 1090
    :cond_c
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    const-string v7, "tel"

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 1099
    :cond_d
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    const-string v6, "android.telephony.HAS_CALLERINFO_FOR_MOCALL"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1100
    iget-wide v6, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    .line 1101
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIntent:Landroid/content/Intent;

    const-string v6, "android.telephony.PERSON_ID_FOR_MOCALL"

    iget-wide v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
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

    .line 1161
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1162
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1164
    .local v1, dataUri:Landroid/net/Uri;
    const/4 v9, 0x1

    .line 1165
    .local v9, phoneNumberIndex:I
    const/4 v7, 0x0

    .line 1166
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

    .line 1170
    .local v8, phoneCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1172
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v10, :cond_1

    .line 1173
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    const-string v0, "is_super_primary"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1183
    :cond_1
    if-eqz v8, :cond_2

    .line 1184
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1187
    :cond_2
    return-object v7
.end method

.method private startHangupCallAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 709
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    const v1, 0x10a001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;

    .line 711
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 712
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 713
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 714
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 715
    return-void
.end method

.method private startMakeCallAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 697
    .local v0, contactBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 698
    .local v1, newContactBmp:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 700
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    const v3, 0x10a001b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;

    .line 702
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 703
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 704
    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->startNow()V

    .line 705
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 706
    return-void
.end method

.method private startQuery()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 1012
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1017
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1018
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 1019
    iget-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldContactId:J

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 1020
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->makeCall(Ljava/lang/String;)V

    goto :goto_0

    .line 1023
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

    .line 1027
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

    .line 1030
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1031
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

    .line 1034
    :cond_5
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1035
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

    .line 407
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    .line 408
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 409
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 410
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 411
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    .line 413
    if-nez p2, :cond_0

    .line 414
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

    .line 418
    :cond_0
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "phoneNumber"
    .parameter "extras"

    .prologue
    const-wide/16 v2, 0x0

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromPhone(Ljava/lang/String;ZJ)V

    .line 472
    if-eqz p2, :cond_0

    .line 473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 474
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 475
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.PERSON_ID_FOR_MOCALL"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 477
    :cond_0
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 2
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    .line 466
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromPhone(Ljava/lang/String;ZJ)V

    .line 467
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

    .line 431
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 432
    iput-wide p3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 433
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    .line 434
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 435
    iput-object v5, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    .line 437
    if-nez p2, :cond_0

    .line 438
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

    .line 444
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

    .line 448
    :cond_1
    invoke-virtual {p0, v8}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickable(Z)V

    .line 449
    invoke-virtual {p0, v8}, Lcom/meizu/widget/RoundCornerContactBadge;->setLongClickable(Z)V

    .line 454
    :goto_0
    return-void

    .line 451
    :cond_2
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickable(Z)V

    .line 452
    invoke-virtual {p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setLongClickable(Z)V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    const/4 v2, 0x0

    .line 390
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactUri:Landroid/net/Uri;

    .line 391
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    .line 392
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactEmail:Ljava/lang/String;

    .line 393
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    .line 394
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    .line 395
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 939
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 940
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawableState()[I

    move-result-object v1

    .line 942
    .local v1, states:[I
    iget-boolean v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-nez v2, :cond_0

    .line 943
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 944
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 946
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 949
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public getBorderType()Lcom/meizu/widget/RoundCornerContactBadge$BorderType;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    return-object v0
.end method

.method public getIconType()Lcom/meizu/widget/RoundCornerContactBadge$IconType;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 995
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->startQuery()V

    .line 996
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 963
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 965
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 968
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 841
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 842
    iget-object v4, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 843
    .local v4, oldDstContact:Landroid/graphics/drawable/Drawable;
    iput-object v13, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 844
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->drawContactDrawable()V

    .line 846
    if-eqz v4, :cond_0

    .line 847
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #oldDstContact:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 852
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 853
    .local v2, drawRect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    sget-object v8, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    if-ne v7, v8, :cond_8

    .line 854
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOffsetRight:I

    sub-int/2addr v10, v11

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 860
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 861
    .local v5, saveCount:I
    iget v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingLeft:I

    int-to-float v7, v7

    iget v8, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingTop:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 863
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;

    if-eqz v7, :cond_2

    .line 864
    :cond_1
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;

    if-eqz v7, :cond_9

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mMakeCallAnim:Landroid/view/animation/Animation;

    .line 865
    .local v0, anim:Landroid/view/animation/Animation;
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v7, v8, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 868
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 871
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_2
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_b

    .line 872
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v8, 0x1f

    invoke-virtual {p1, v7, v13, v8}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v6

    .line 875
    .local v6, sc:I
    iget v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    cmpl-float v7, v7, v12

    if-eqz v7, :cond_3

    .line 876
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 877
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v9, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    iget v10, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 879
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 883
    :cond_3
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 884
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 885
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 889
    :cond_4
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 890
    .local v3, h:I
    :goto_2
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 891
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 892
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 893
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v3

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 894
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v8

    const/high16 v9, 0x437f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 895
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mAnimDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 896
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 899
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    .line 900
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 901
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 905
    :cond_5
    iget v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCornerRadius:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_6

    .line 906
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 907
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 910
    :cond_6
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 933
    .end local v3           #h:I
    .end local v6           #sc:I
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/meizu/widget/RoundCornerContactBadge;->drawSmallIcon(Landroid/graphics/Canvas;)V

    .line 934
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 935
    return-void

    .line 857
    .end local v5           #saveCount:I
    :cond_8
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 864
    .restart local v5       #saveCount:I
    :cond_9
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mHangupCallAnim:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 889
    .restart local v6       #sc:I
    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 913
    .end local v6           #sc:I
    :cond_b
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 914
    .local v1, contact:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 915
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 918
    iget-boolean v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_c

    .line 919
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 923
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 927
    :cond_c
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    .line 928
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 929
    iget-object v7, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3
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

    .line 493
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 494
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

    .line 497
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 1002
    iget-boolean v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eqz v1, :cond_0

    .line 1003
    iput-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mLongClick:Z

    .line 1004
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->startQuery()V

    .line 1008
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

    .line 481
    iget-boolean v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    if-eqz v2, :cond_0

    .line 482
    iget v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingRight:I

    add-int v1, v2, v3

    .line 483
    .local v1, width:I
    iget v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPaddingBottom:I

    add-int v0, v2, v3

    .line 484
    .local v0, height:I
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 485
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 488
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 489
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    if-nez v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldPhone:Ljava/lang/String;

    .line 976
    iget-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J

    iput-wide v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldContactId:J

    .line 977
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mOldExtras:Landroid/os/Bundle;

    .line 978
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 980
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
    .line 953
    if-eqz p1, :cond_0

    .line 954
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 955
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/meizu/widget/RoundCornerContactBadge;->sStartActivity:Z

    .line 956
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    .line 959
    return-void

    .line 956
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
    const v7, 0x10802a5

    const v6, 0x10802a2

    const v5, 0x1050076

    const v4, 0x1050075

    const/4 v3, 0x0

    .line 592
    if-nez p1, :cond_0

    .line 593
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    if-ne v1, p1, :cond_1

    .line 678
    :goto_0
    return-void

    .line 600
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    .line 601
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 603
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 604
    .local v0, oldDefDrawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 605
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 606
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    :cond_2
    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 612
    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$3;->$SwitchMap$com$meizu$widget$RoundCornerContactBadge$BorderType:[I

    iget-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mBorderType:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    invoke-virtual {v2}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 673
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 674
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 675
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsUseStyle:Z

    goto :goto_0

    .line 614
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 616
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 618
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 620
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 622
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 624
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 629
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 631
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 633
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 635
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 637
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 639
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 644
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 646
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 648
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 650
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 652
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 654
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 660
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewWidth:I

    .line 662
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mViewHeight:I

    .line 664
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureWidth:I

    .line 666
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mPictureHeight:I

    .line 668
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 669
    iput-object v3, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mCallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 612
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
    .line 688
    iget-boolean v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    if-eq v0, p1, :cond_0

    .line 689
    iput-boolean p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z

    .line 690
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 692
    :cond_0
    return-void
.end method

.method public setIconText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconText:Ljava/lang/CharSequence;

    .line 505
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    .line 507
    :cond_0
    return-void
.end method

.method public setIconType(Lcom/meizu/widget/RoundCornerContactBadge$IconType;)V
    .locals 2
    .parameter "iconType"

    .prologue
    .line 515
    if-nez p1, :cond_0

    .line 516
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    if-ne v0, p1, :cond_1

    .line 580
    :goto_0
    return-void

    .line 523
    :cond_1
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    .line 524
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge$3;->$SwitchMap$com$meizu$widget$RoundCornerContactBadge$IconType:[I

    iget-object v1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mIconType:Lcom/meizu/widget/RoundCornerContactBadge$IconType;

    invoke-virtual {v1}, Lcom/meizu/widget/RoundCornerContactBadge$IconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 579
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->invalidate()V

    goto :goto_0

    .line 526
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080785

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 531
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080783

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 536
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080784

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 541
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080788

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 546
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080789

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 551
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080786

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 556
    :pswitch_6
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080787

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 561
    :pswitch_7
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108078a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 566
    :pswitch_8
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108044f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 571
    :pswitch_9
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108044e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 524
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
    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bm"
    .parameter "recycle"

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    iput-boolean p2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mRecycle:Z

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    .line 331
    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 3
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 269
    if-nez p1, :cond_1

    .line 270
    invoke-virtual {p0, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 284
    if-nez p1, :cond_1

    .line 285
    invoke-virtual {p0, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 289
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/widget/RoundCornerContactBadge;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    iput-object v2, p0, Lcom/meizu/widget/RoundCornerContactBadge;->mDstContactDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 985
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

    .line 989
    :goto_0
    return-void

    .line 988
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .parameter "scaleType"

    .prologue
    .line 378
    return-void
.end method
