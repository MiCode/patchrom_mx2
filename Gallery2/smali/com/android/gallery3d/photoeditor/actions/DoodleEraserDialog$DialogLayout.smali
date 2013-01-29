.class Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;
.super Landroid/widget/LinearLayout;
.source "DoodleEraserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogLayout"
.end annotation


# instance fields
.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field private mClearDoodleButton:Landroid/widget/Button;

.field private mEraserBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mEraserButtonHeight:I

.field private final mEraserButtonWidth:I

.field private mEraserSizeBar:Landroid/widget/SeekBar;

.field private mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;

.field private final mEraserViewHeight:I

.field private final mEraserViewWidth:I

.field private final mSeekBarWidth:I

.field private mTitle:Landroid/widget/TextView;

.field private final mTitleSize:I

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    .line 99
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout$2;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 100
    const v1, 0x7f090175

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserViewWidth:I

    .line 101
    const v1, 0x7f090176

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserViewHeight:I

    .line 102
    const v1, 0x7f090193

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mTitleSize:I

    .line 103
    const v1, 0x7f090179

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mSeekBarWidth:I

    .line 104
    const v1, 0x7f090177

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserButtonWidth:I

    .line 105
    const v1, 0x7f090178

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserButtonHeight:I

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->setOrientation(I)V

    .line 108
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mTitle:Landroid/widget/TextView;

    .line 109
    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeBar:Landroid/widget/SeekBar;

    .line 110
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearDoodleButton:Landroid/widget/Button;

    .line 111
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;

    invoke-direct {v1, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;

    .line 113
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mDialogWidth:I

    iget v2, p1, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mDialogHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    const v1, 0x7f02006d

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->setBackgroundResource(I)V

    .line 116
    invoke-direct {p0, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->addChildView(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;)Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;

    return-object v0
.end method

.method private addChildView(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 120
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    iget v4, v4, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->mDialogWidth:I

    invoke-direct {v3, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v3, textViewParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    const v5, 0x7f09017b

    invoke-virtual {v4, p1, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 122
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mTitle:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mTitleSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0111

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mTitle:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 126
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserViewWidth:I

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserViewHeight:I

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v1, eraserViewParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    const v5, 0x7f09017c

    invoke-virtual {v4, p1, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 131
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 132
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;->setRectSize(II)V

    .line 134
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeView:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$EraserSizeView;

    invoke-virtual {p0, v4, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mSeekBarWidth:I

    invoke-direct {v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v2, seekBarParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    const v5, 0x7f09017d

    invoke-virtual {v4, p1, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 138
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 139
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeBar:Landroid/widget/SeekBar;

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 140
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 142
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeBar:Landroid/widget/SeekBar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 143
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserSizeBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v4, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserButtonWidth:I

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mEraserButtonHeight:I

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v0, ButtonParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    const v5, 0x7f09017e

    invoke-virtual {v4, p1, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 147
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;

    const v5, 0x7f09017f

    invoke-virtual {v4, p1, v5}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 148
    const/16 v4, 0x51

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearDoodleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearDoodleButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearDoodleButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getPaddingRight()I

    move-result v6

    invoke-virtual {v4, v5, v7, v6, v7}, Landroid/widget/Button;->setPadding(IIII)V

    .line 150
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearDoodleButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 151
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearDoodleButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0112

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearDoodleButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearDoodleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->mClearDoodleButton:Landroid/widget/Button;

    invoke-virtual {p0, v4, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleEraserDialog$DialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void
.end method
