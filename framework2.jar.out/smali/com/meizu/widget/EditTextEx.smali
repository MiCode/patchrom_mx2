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

.field static final TAG:Ljava/lang/String; = "EditTextEx"


# instance fields
.field private mIsCursorAlwaysVisible:Z

.field private mIsMagnifierVisible:Z

.field private mIsOptionsVisible:Z

.field private mOnAttachmentListener:Lcom/meizu/widget/EditTextEx$OnAttachmentListener;

.field private mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const v0, 0x1010447

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/EditTextEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
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

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v6, Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-direct {v6}, Lcom/meizu/widget/EditTextEx$StaticHint;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    .line 50
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    .line 52
    iput-boolean v7, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    .line 54
    iput-boolean v8, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    .line 66
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getTextSize()F

    move-result v5

    .line 67
    .local v5, textSize:F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 68
    .local v4, paddingRect:Landroid/graphics/Rect;
    sget-object v6, Lcom/android/internal/R$styleable;->EditTextEx:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 70
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 71
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 72
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 70
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    .line 77
    :pswitch_1
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintColor(Landroid/content/res/ColorStateList;)Z

    goto :goto_1

    .line 80
    :pswitch_2
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintWidth(I)Z

    goto :goto_1

    .line 84
    :pswitch_3
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v5, v6

    .line 85
    goto :goto_1

    .line 88
    :pswitch_4
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintGravity(I)Z

    goto :goto_1

    .line 92
    :pswitch_5
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 96
    :pswitch_6
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 100
    :pswitch_7
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 104
    :pswitch_8
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 108
    .end local v1           #attr:I
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v6, v4}, Lcom/meizu/widget/EditTextEx$StaticHint;->setPadding(Landroid/graphics/Rect;)V

    .line 109
    iget-object v6, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    float-to-int v7, v5

    invoke-virtual {v6, v7}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintSize(I)Z

    .line 110
    invoke-direct {p0}, Lcom/meizu/widget/EditTextEx;->updateStaticHint()V

    .line 111
    return-void

    .line 72
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

.method private updateStaticHint()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    goto :goto_0
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 253
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
    .line 550
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    return v0
.end method

.method protected getDefaultMagnifierVisible()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    return v0
.end method

.method protected getDefaultOptionsVisible()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    return v0
.end method

.method public final getStaticHint(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resid"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getStaticHintGravity()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintGravity()I

    move-result v0

    return v0
.end method

.method public getStaticHintPaddingBottom()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getStaticHintPaddingLeft()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getStaticHintPaddingRight()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getStaticHintPaddingTop()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final getStaticHintTextColor()I
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 156
    .local v0, csl:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v1

    .line 159
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
    .line 178
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getHintSize()I

    move-result v0

    return v0
.end method

.method public final getStaticHintWidth()I
    .locals 1

    .prologue
    .line 197
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
    .line 558
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    return v0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    return v0
.end method

.method public isOptionsVisible()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 259
    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v5}, Lcom/meizu/widget/EditTextEx$StaticHint;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 261
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    .line 262
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getExtendedPaddingTop()I

    move-result v3

    .line 263
    .local v3, paddingTop:I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getDrawableState()[I

    move-result-object v4

    .line 264
    .local v4, stateSet:[I
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 265
    .local v1, hintColors:Landroid/content/res/ColorStateList;
    if-nez v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getCurrentHintTextColor()I

    move-result v0

    .line 270
    .local v0, defColor:I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 271
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getScrollX()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getScrollY()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 272
    iget-object v5, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getExtendedPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v3

    invoke-virtual {v5, p1, v4, v0, v6}, Lcom/meizu/widget/EditTextEx$StaticHint;->drawHint(Landroid/graphics/Canvas;[III)V

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 276
    .end local v0           #defColor:I
    .end local v1           #hintColors:Landroid/content/res/ColorStateList;
    .end local v2           #paddingLeft:I
    .end local v3           #paddingTop:I
    .end local v4           #stateSet:[I
    :cond_0
    return-void

    .line 268
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
    .line 522
    const-string v0, "com.meizu.input.ATTACHMENT"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mOnAttachmentListener:Lcom/meizu/widget/EditTextEx$OnAttachmentListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 524
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mOnAttachmentListener:Lcom/meizu/widget/EditTextEx$OnAttachmentListener;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/widget/EditTextEx$OnAttachmentListener;->onAttachment(Ljava/lang/String;)Z

    move-result v0

    .line 526
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
    .line 554
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsCursorAlwaysVisible:Z

    .line 555
    return-void
.end method

.method public setMagnifierVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 562
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsMagnifierVisible:Z

    .line 563
    return-void
.end method

.method public setOnAttachmentListener(Lcom/meizu/widget/EditTextEx$OnAttachmentListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/meizu/widget/EditTextEx;->mOnAttachmentListener:Lcom/meizu/widget/EditTextEx$OnAttachmentListener;

    .line 518
    return-void
.end method

.method public setOptionsVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/meizu/widget/EditTextEx;->mIsOptionsVisible:Z

    .line 571
    return-void
.end method

.method public final setSmilePanelShown(Z)Z
    .locals 3
    .parameter "show"

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getInputType()I

    move-result v0

    .line 459
    .local v0, inputtype:I
    and-int/lit8 v2, v0, 0xf

    if-nez v2, :cond_0

    .line 460
    const/4 v2, 0x0

    .line 474
    :goto_0
    return v2

    .line 463
    :cond_0
    move v1, v0

    .line 464
    .local v1, newinputtype:I
    if-eqz p1, :cond_2

    .line 465
    const/high16 v2, 0x20

    or-int/2addr v1, v2

    .line 470
    :goto_1
    if-eq v1, v0, :cond_1

    .line 471
    invoke-virtual {p0, v1}, Lcom/meizu/widget/EditTextEx;->setInputType(I)V

    .line 474
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 467
    :cond_2
    const v2, -0x200001

    and-int/2addr v1, v2

    goto :goto_1
.end method

.method public final setStaticHint(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/EditTextEx;->setStaticHint(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public final setStaticHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 120
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 122
    :cond_0
    return-void
.end method

.method public final setStaticHintGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintGravity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 207
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 209
    :cond_0
    return-void
.end method

.method public setStaticHintPaddingBottom(I)V
    .locals 1
    .parameter "paddingBottom"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 249
    return-void
.end method

.method public setStaticHintPaddingLeft(I)V
    .locals 1
    .parameter "paddingLeft"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 225
    return-void
.end method

.method public setStaticHintPaddingRight(I)V
    .locals 1
    .parameter "paddingRight"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 233
    return-void
.end method

.method public setStaticHintPaddingTop(I)V
    .locals 1
    .parameter "paddingTop"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 241
    return-void
.end method

.method public final setStaticHintTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintColor(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 148
    :cond_0
    return-void
.end method

.method public final setStaticHintTextSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintSize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 169
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 171
    :cond_0
    return-void
.end method

.method public final setStaticHintWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/EditTextEx$StaticHint;->setHintWidth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/meizu/widget/EditTextEx;->mStaticHint:Lcom/meizu/widget/EditTextEx$StaticHint;

    invoke-virtual {v0}, Lcom/meizu/widget/EditTextEx$StaticHint;->updateHint()V

    .line 188
    invoke-virtual {p0}, Lcom/meizu/widget/EditTextEx;->invalidate()V

    .line 190
    :cond_0
    return-void
.end method
