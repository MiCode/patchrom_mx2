.class Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;
.super Landroid/widget/LinearLayout;
.source "DoodleShapeDialog.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsLayout"
.end annotation


# instance fields
.field private mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

.field private mShapeClickListener:Landroid/view/View$OnClickListener;

.field private mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

.field private mTitleText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    .line 98
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v1, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout$1;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeClickListener:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mTitleText:Landroid/widget/TextView;

    .line 100
    new-instance v1, Lcom/android/gallery3d/photoeditor/ColorPickerView;

    invoke-direct {v1, p2}, Lcom/android/gallery3d/photoeditor/ColorPickerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

    .line 101
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    new-instance v2, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    invoke-direct {v2, p1, p2, v5}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    invoke-direct {v2, p1, p2, v6}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    invoke-direct {v2, p1, p2, v3}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    invoke-direct {v2, p1, p2, v4}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    invoke-direct {v2, p1, p2, v7}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)V

    aput-object v2, v1, v7

    const/4 v2, 0x5

    new-instance v3, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v4, 0x5

    invoke-direct {v3, p1, p2, v4}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;-><init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    .line 105
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutWidth:I
    invoke-static {p1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$000(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v1

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutHeight:I
    invoke-static {p1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$100(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->setOrientation(I)V

    .line 108
    const v1, 0x7f02006d

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->setBackgroundResource(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, v5, v5, v5, v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->setPadding(IIII)V

    .line 111
    invoke-direct {p0, p2}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->addChildView(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;)[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    return-object v0
.end method

.method private addChildView(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 116
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mLayoutWidth:I
    invoke-static {v8}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$000(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v5, textViewParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f090186

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    const/4 v8, 0x1

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 119
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0129

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08004a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mTitleText:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 122
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mTitleText:Landroid/widget/TextView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v11, 0x7f090185

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v10, p1, v11}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .local v6, upLayout:Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v7, upLinearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f09018c

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 130
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 132
    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->addView(Landroid/view/View;)V

    .line 134
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .local v1, downLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 136
    .local v2, downLinearLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f09018d

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f090190

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v10, 0x7f090190

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v9, p1, v10}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v3, firstSelectShapeParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f09018e

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 144
    const/16 v8, 0x10

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 146
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f090190

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v10, 0x7f090190

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v9, p1, v10}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    .local v4, selectShapeParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f09018f

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 149
    const/16 v8, 0x10

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 151
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8, v3}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I
    invoke-static {v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$300(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setColor(IZ)V

    .line 155
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8, v3}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-virtual {v8, v4}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v0, colorPickerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f090187

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 181
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f090188

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 182
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f09018b

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 183
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    const v9, 0x7f09018b

    #calls: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->getDimensionPixelSize(Landroid/content/Context;I)I
    invoke-static {v8, p1, v9}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$200(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 184
    const/4 v8, 0x1

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 185
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

    invoke-virtual {v8, p0}, Lcom/android/gallery3d/photoeditor/ColorPickerView;->setOnColorChagedListener(Lcom/android/gallery3d/photoeditor/ColorPickerView$OnColorChangedListener;)V

    .line 187
    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mColorPicker:Lcom/android/gallery3d/photoeditor/ColorPickerView;

    invoke-virtual {p0, v8}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->addView(Landroid/view/View;)V

    .line 188
    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #setter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedColor:I
    invoke-static {v0, p1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$302(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;I)I

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$500(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->setColor(IZ)V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->mShapeView:[Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$500(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->invalidate()V

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$OnShapeChangeListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mListener:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$OnShapeChangeListener;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$SettingsLayout;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    #getter for: Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->mSelectedShape:I
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;->access$500(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$OnShapeChangeListener;->onShapeChange(II)V

    .line 218
    :cond_0
    return-void
.end method
