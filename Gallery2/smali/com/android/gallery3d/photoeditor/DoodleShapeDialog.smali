.class public Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;
.super Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;
.source "DoodleShapeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

.field private mLayoutWidth:I

.field public mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;

.field private mSelectedColor:I

.field private mSelectedShape:I

.field private mShapeClickListener:Landroid/view/View$OnClickListener;

.field private mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

.field private mWindowContentView:Landroid/view/View;

.field private final mYoffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I

    .line 20
    const v1, -0x2fd2d3

    iput v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I

    .line 110
    new-instance v1, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$2;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeClickListener:Landroid/view/View$OnClickListener;

    .line 38
    const v1, 0x7f090336

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mYoffset:I

    .line 39
    const v1, 0x7f0902fd

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutWidth:I

    .line 41
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f040053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mWindowContentView:Landroid/view/View;

    .line 43
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mWindowContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->initViews()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I

    return p1
.end method

.method private getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private initViews()V
    .locals 5

    .prologue
    .line 48
    const/4 v1, 0x6

    new-array v2, v1, [Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mWindowContentView:Landroid/view/View;

    const v4, 0x7f0d011a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    aput-object v1, v2, v3

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mWindowContentView:Landroid/view/View;

    const v4, 0x7f0d011b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    aput-object v1, v2, v3

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mWindowContentView:Landroid/view/View;

    const v4, 0x7f0d011c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    aput-object v1, v2, v3

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mWindowContentView:Landroid/view/View;

    const v4, 0x7f0d011d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    aput-object v1, v2, v3

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mWindowContentView:Landroid/view/View;

    const v4, 0x7f0d011e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    aput-object v1, v2, v3

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mWindowContentView:Landroid/view/View;

    const v4, 0x7f0d011f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    .line 56
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mWindowContentView:Landroid/view/View;

    const v2, 0x7f0d0120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/ColorPickerView;

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

    .line 61
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

    new-instance v2, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$1;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->setOnColorChagedListener(Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public setOnShapeChangeListener(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$DoodleShapeChangeListener;

    .line 98
    return-void
.end method

.method public setShapeParams(II)V
    .locals 3
    .parameter "selectedColor"
    .parameter "selectedShape"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I

    .line 102
    iput p2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mShapeView:[Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->setColor(IZ)V

    .line 104
    return-void
.end method

.method public show(Landroid/view/View;IZ)V
    .locals 5
    .parameter "anchor"
    .parameter "screenWidth"
    .parameter "isVertical"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mAnchorView:Landroid/view/View;

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->showAsDropDown(Landroid/view/View;)V

    .line 81
    if-eqz p3, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mYoffset:I

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SettingsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutWidth:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mYoffset:I

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
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->show(Landroid/view/View;IZ)V

    .line 90
    return-void
.end method
