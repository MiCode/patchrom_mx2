.class Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;
.super Landroid/widget/LinearLayout;
.source "DoodlePaintDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoodlePaintSetingLayout"
.end annotation


# instance fields
.field private mAlphaText:Landroid/widget/TextView;

.field private final mColorPaletteH:I

.field private final mColorPaletteW:I

.field private mColorPen:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;

.field private final mItemTextSize:I

.field private mPaintAlphaBar:Landroid/widget/SeekBar;

.field private mPaintSizeBar:Landroid/widget/SeekBar;

.field private mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSeekBarWidth:I

.field private mSizeText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private final mTitleSize:I

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    .line 102
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 103
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mTitle:Landroid/widget/TextView;

    .line 104
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSizeText:Landroid/widget/TextView;

    .line 105
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mAlphaText:Landroid/widget/TextView;

    .line 106
    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintSizeBar:Landroid/widget/SeekBar;

    .line 107
    new-instance v1, Landroid/widget/SeekBar;

    invoke-direct {v1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintAlphaBar:Landroid/widget/SeekBar;

    .line 108
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;

    invoke-direct {v1, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mColorPen:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;

    .line 110
    const v1, 0x7f090163

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mTitleSize:I

    .line 111
    const v1, 0x7f090164

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mItemTextSize:I

    .line 112
    const v1, 0x7f090165

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSeekBarWidth:I

    .line 113
    const v1, 0x7f090166

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mColorPaletteW:I

    .line 114
    const v1, 0x7f090167

    invoke-virtual {p1, p2, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mColorPaletteH:I

    .line 116
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->setOrientation(I)V

    .line 118
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mDialogWidth:I

    iget v2, p1, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mDialogHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const v1, 0x7f02006d

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->setBackgroundResource(I)V

    .line 122
    invoke-direct {p0, p2}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->addChildView(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintSizeBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private addChildView(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 126
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    iget v7, v7, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->mDialogWidth:I

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v1, matchContent:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v6, titleParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const v8, 0x7f090168

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 130
    const/4 v7, 0x1

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 131
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mTitle:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mTitleSize:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08004a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0113

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mTitle:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v7, v6}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    .local v3, paintSizeSetting:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const v8, 0x7f090169

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 141
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v5, textParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const v8, 0x7f09016a

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 145
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const v8, 0x7f09016b

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 146
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSizeText:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mItemTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSizeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0114

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSizeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080049

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSizeText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSizeText:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSeekBarWidth:I

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v4, seekBarParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintSizeBar:Landroid/widget/SeekBar;

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 155
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintSizeBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintSizeBar:Landroid/widget/SeekBar;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 157
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintSizeBar:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 158
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintSizeBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .local v2, paintAlphaSetting:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 163
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const v8, 0x7f09016c

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 164
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mAlphaText:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mItemTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 167
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mAlphaText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0115

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mAlphaText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080049

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mAlphaText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mAlphaText:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 171
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mAlphaText:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintAlphaBar:Landroid/widget/SeekBar;

    const/16 v8, 0xcd

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 174
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintAlphaBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintAlphaBar:Landroid/widget/SeekBar;

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 176
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintAlphaBar:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 177
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mPaintAlphaBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->addView(Landroid/view/View;)V

    .line 180
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mColorPaletteW:I

    iget v8, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mColorPaletteH:I

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v0, colorPenParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const v8, 0x7f09016d

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 182
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const v8, 0x7f09016e

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 183
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const v8, 0x7f09016f

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 184
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;

    const v8, 0x7f090170

    invoke-virtual {v7, p1, v8}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 185
    const/4 v7, 0x1

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 186
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mColorPen:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;

    invoke-virtual {v7, v0}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->mColorPen:Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodleColorPen;

    invoke-virtual {p0, v7}, Lcom/android/gallery3d/photoeditor/actions/DoodlePaintDialog$DoodlePaintSetingLayout;->addView(Landroid/view/View;)V

    .line 188
    return-void
.end method
