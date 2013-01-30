.class public Lcom/android/gallery3d/photoeditor/DoodleTextDialog;
.super Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;
.source "DoodleTextDialog.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

.field private mDefaultColor:I

.field private mLayoutWidth:I

.field private mListener:Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;

.field private mSelectedColor:I

.field private mSelectedSize:I

.field private mSettingView:Landroid/view/View;

.field private mText:[Landroid/widget/TextView;

.field private mTextClick:Landroid/view/View$OnClickListener;

.field private final mYoffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    .line 24
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I

    .line 25
    const/high16 v1, -0x100

    iput v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedColor:I

    .line 66
    new-instance v1, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$1;-><init>(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mTextClick:Landroid/view/View$OnClickListener;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mYoffset:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mLayoutWidth:I

    .line 40
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mDefaultColor:I

    .line 45
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->initChildView()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)[Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mDefaultColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/DoodleTextDialog;)Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;

    return-object v0
.end method

.method private initChildView()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/ColorPickerView;

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

    .line 54
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->setOnColorChagedListener(Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;)V

    .line 55
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    const v3, 0x7f0d010d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v4

    .line 57
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    const v3, 0x7f0d010e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v5

    .line 58
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    const v4, 0x7f0d010f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v3

    .line 59
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSettingView:Landroid/view/View;

    const v3, 0x7f0d0110

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v6

    .line 60
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    iget v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v6, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mTextClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedColor:I

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mText:[Landroid/widget/TextView;

    iget v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedSize:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mSelectedColor:I

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;->onTextSettingChangeListener(FI)V

    .line 108
    :cond_0
    return-void
.end method

.method public setOnTextSettingChangeListener(Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleTextDialog$OnTextSettingChangeListener;

    .line 50
    return-void
.end method

.method public show(Landroid/view/View;IZ)V
    .locals 5
    .parameter "anchor"
    .parameter "screenWidth"
    .parameter "isVertical"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mAnchorView:Landroid/view/View;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 90
    if-eqz p3, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mYoffset:I

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mLayoutWidth:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mYoffset:I

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method public update(IZ)V
    .locals 1
    .parameter "screenWidth"
    .parameter "isVertical"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/gallery3d/photoeditor/DoodleTextDialog;->show(Landroid/view/View;IZ)V

    .line 99
    return-void
.end method
