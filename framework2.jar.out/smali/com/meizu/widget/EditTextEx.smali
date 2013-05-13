.class public Lcom/meizu/widget/EditTextEx;
.super Landroid/widget/EditText;
.source "EditTextEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/EditTextEx$OnAttachmentListener;,
        Lcom/meizu/widget/EditTextEx$StaticHint;
    }
.end annotation


# static fields
.field private static final ACTION_ATTACHMENT:Ljava/lang/String; = "com.meizu.input.ATTACHMENT"

.field public static final ATTACHMENT_CAMERA:Ljava/lang/String; = "camera"

.field public static final ATTACHMENT_CONTACT_TEXT:Ljava/lang/String; = "contact_text"

.field public static final ATTACHMENT_CONTACT_VCARD:Ljava/lang/String; = "contact_vcard"

.field public static final ATTACHMENT_FOLDER:Ljava/lang/String; = "folder"

.field public static final ATTACHMENT_GRAFFITI:Ljava/lang/String; = "graffiti"

.field public static final ATTACHMENT_PHOTO:Ljava/lang/String; = "photo"

.field public static final EMO4MMS:I = 0x0

.field public static final EMO4WEIBO:I = 0x1

.field private static final EMO_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "EditTextEx"


# instance fields
.field private mIsCursorAlwaysVisible:Z

.field private mIsMagnifierVisible:Z

.field private mIsOptionsVisible:Z

.field private mOnAttachmentListener:Lcom/meizu/widget/EditTextEx$OnAttachmentListener;

.field private mSmileType:Ljava/lang/String;

.field private mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 649
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/meizu/widget/EditTextEx;->EMO_MAP:Landroid/util/SparseArray;

    .line 651
    sget-object v0, Lcom/meizu/widget/EditTextEx;->EMO_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "com.meizu.input.EMO4MMS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 652
    sget-object v0, Lcom/meizu/widget/EditTextEx;->EMO_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "com.meizu.input.EMO4WEIBO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const v0, 0x1010449

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v6, Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-direct {v6}, Lcom/meizu/widget/EditTextEx$StaticHint;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    .line 55
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    .line 57
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    .line 59
    iput-boolean v8, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    .line 71
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getTextSize()F

    move-result v5

    .line 72
    .local v5, textSize:F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .local v4, paddingRect:Landroid/graphics/Rect;
    sget-object v6, Lcom/android/internal/R$styleable;->EditTextEx:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 75
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 77
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    .line 82
    :pswitch_1
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintColor(Landroid/content/res/ColorStateList;)Z

    goto :goto_1

    .line 85
    :pswitch_2
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintWidth(I)Z

    goto :goto_1

    .line 89
    :pswitch_3
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v5, v6

    .line 90
    goto :goto_1

    .line 93
    :pswitch_4
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintGravity(I)Z

    goto :goto_1

    .line 97
    :pswitch_5
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 101
    :pswitch_6
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 105
    :pswitch_7
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 109
    :pswitch_8
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 113
    .end local v1           #attr:I
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v6, v4}, Lcom/meizu/widget/EditTextEx$StaticHint;->setPadding(Landroid/graphics/Rect;)V

    .line 114
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    float-to-int v7, v5

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintSize(I)Z

    .line 115
    invoke-direct {p0}, Lcom/meizu/widget/EditTextEx;->updateStaticHint()V

    .line 116
    invoke-virtual {p0, v8}, Lcom/meizu/widget/EditTextEx;->setSmilePanelType(I)Z

    .line 117
    return-void

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private static appendToCsvIfNotExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "csv"

    .prologue
    .line 620
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    .end local p0
    :goto_0
    return-object p0

    .line 621
    .restart local p0
    :cond_0
    invoke-static {p0, p1}, Lcom/meizu/widget/EditTextEx;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 622
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "key"
    .parameter "array"

    .prologue
    .line 608
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 609
    .local v1, element:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 611
    .end local v1           #element:Ljava/lang/String;
    :goto_1
    return v4

    .line 608
    .restart local v1       #element:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "csv"

    .prologue
    .line 615
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 616
    :goto_0
    return v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/widget/EditTextEx;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static removeFromCsvIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"
    .parameter "csv"

    .prologue
    .line 626
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 633
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 627
    .restart local p1
    :cond_1
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, elements:[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/meizu/widget/EditTextEx;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 629
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 630
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 631
    .local v1, element:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 633
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    const-string v6, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static replaceOfCsvIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "keySrc"
    .parameter "keyDst"
    .parameter "csv"

    .prologue
    .line 637
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    .end local p2
    :goto_0
    return-object p2

    .line 638
    .restart local p2
    :cond_0
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, elements:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 640
    aget-object v2, v0, v1

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    aput-object p1, v0, v1

    .line 639
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 644
    :cond_2
    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private updateStaticHint()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    goto :goto_0
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    #calls: Lcom/meizu/widget/EditTextEx$StaticHint;->getHintWidth()I
    invoke-static {v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->access$000(Lcom/meizu/widget/EditTextEx$StaticHint;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getDefaultCursorAlwaysVisible()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    return v0
.end method

.method protected getDefaultMagnifierVisible()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    return v0
.end method

.method protected getDefaultOptionsVisible()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    return v0
.end method

.method public final getStaticHint(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resid"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getStaticHintGravity()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintGravity()I

    move-result v0

    return v0
.end method

.method public getStaticHintPaddingBottom()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getStaticHintPaddingLeft()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getStaticHintPaddingRight()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getStaticHintPaddingTop()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final getStaticHintTextColor()I
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 162
    .local v0, csl:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v1

    .line 165
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0
.end method

.method public final getStaticHintTextSize()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintSize()I

    move-result v0

    return v0
.end method

.method public final getStaticHintWidth()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    #calls: Lcom/meizu/widget/EditTextEx$StaticHint;->getHintWidth()I
    invoke-static {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->access$000(Lcom/meizu/widget/EditTextEx$StaticHint;)I

    move-result v0

    return v0
.end method

.method public isCursorAlwaysVisible(Z)Z
    .locals 1
    .parameter "visible"

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    return v0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    return v0
.end method

.method public isOptionsVisible()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 265
    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v5}, Lcom/meizu/widget/EditTextEx$StaticHint;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    .line 268
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getExtendedPaddingTop()I

    move-result v3

    .line 269
    .local v3, paddingTop:I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getDrawableState()[I

    move-result-object v4

    .line 270
    .local v4, stateSet:[I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 271
    .local v1, hintColors:Landroid/content/res/ColorStateList;
    if-nez v1, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v0

    .line 276
    .local v0, defColor:I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 277
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getScrollX()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getScrollY()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 278
    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getExtendedPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v3

    invoke-virtual {v5, p1, v4, v0, v6}, Lcom/meizu/widget/EditTextEx$StaticHint;->drawHint(Landroid/graphics/Canvas;[III)V

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 282
    .end local v0           #defColor:I
    .end local v1           #hintColors:Landroid/content/res/ColorStateList;
    .end local v2           #paddingLeft:I
    .end local v3           #paddingTop:I
    .end local v4           #stateSet:[I
    :cond_0
    return-void

    .line 274
    .restart local v1       #hintColors:Landroid/content/res/ColorStateList;
    .restart local v2       #paddingLeft:I
    .restart local v3       #paddingTop:I
    .restart local v4       #stateSet:[I
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .restart local v0       #defColor:I
    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 552
    const-string v0, "com.meizu.input.ATTACHMENT"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mOnAttachmentListener:Lcom/meizu/widget/EditTextEx$OnAttachmentListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 554
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mOnAttachmentListener:Lcom/meizu/widget/EditTextEx$OnAttachmentListener;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/widget/EditTextEx$OnAttachmentListener;->onAttachment(Ljava/lang/String;)Z

    move-result v0

    .line 556
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCursorAlwaysVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    .line 585
    return-void
.end method

.method public setMagnifierVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    .line 593
    return-void
.end method

.method public setOnAttachmentListener(Lcom/meizu/widget/EditTextEx$OnAttachmentListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx;->mOnAttachmentListener:Lcom/meizu/widget/EditTextEx$OnAttachmentListener;

    .line 548
    return-void
.end method

.method public setOptionsVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    .line 601
    return-void
.end method

.method public final setSmilePanelShown(Z)Z
    .locals 5
    .parameter "show"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx;->mSmileType:Ljava/lang/String;

    .line 465
    .local v1, emo:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    const/4 v4, 0x0

    .line 482
    :goto_0
    return v4

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, pre:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 472
    invoke-static {v1, v3}, Lcom/meizu/widget/EditTextEx;->appendToCsvIfNotExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, cur:Ljava/lang/String;
    :goto_1
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 477
    invoke-virtual {p0, v0}, Lcom/meizu/widget/EditTextEx;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 478
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 479
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 482
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 474
    .end local v0           #cur:Ljava/lang/String;
    :cond_2
    invoke-static {v1, v3}, Lcom/meizu/widget/EditTextEx;->removeFromCsvIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cur:Ljava/lang/String;
    goto :goto_1
.end method

.method public final setSmilePanelType(I)Z
    .locals 5
    .parameter "emoType"

    .prologue
    .line 489
    sget-object v4, Lcom/meizu/widget/EditTextEx;->EMO_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 490
    .local v1, emo:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    const/4 v4, 0x0

    .line 504
    :goto_0
    return v4

    .line 494
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/EditTextEx;->mSmileType:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, pre:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/EditTextEx;->mSmileType:Ljava/lang/String;

    invoke-static {v4, v1, v3}, Lcom/meizu/widget/EditTextEx;->replaceOfCsvIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, cur:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 498
    invoke-virtual {p0, v0}, Lcom/meizu/widget/EditTextEx;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 499
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 500
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 502
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iput-object v1, p0, Lcom/meizu/widget/EditTextEx;->mSmileType:Ljava/lang/String;

    .line 504
    .end local v0           #cur:Ljava/lang/String;
    .end local v3           #pre:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public final setStaticHint(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/EditTextEx;->setStaticHint(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public final setStaticHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 126
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 128
    :cond_0
    return-void
.end method

.method public final setStaticHintGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintGravity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 213
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 215
    :cond_0
    return-void
.end method

.method public setStaticHintPaddingBottom(I)V
    .locals 1
    .parameter "paddingBottom"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 255
    return-void
.end method

.method public setStaticHintPaddingLeft(I)V
    .locals 1
    .parameter "paddingLeft"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 231
    return-void
.end method

.method public setStaticHintPaddingRight(I)V
    .locals 1
    .parameter "paddingRight"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 239
    return-void
.end method

.method public setStaticHintPaddingTop(I)V
    .locals 1
    .parameter "paddingTop"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 247
    return-void
.end method

.method public final setStaticHintTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 154
    :cond_0
    return-void
.end method

.method public final setStaticHintTextSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintSize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 175
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 177
    :cond_0
    return-void
.end method

.method public final setStaticHintWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintWidth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 194
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 196
    :cond_0
    return-void
.end method
