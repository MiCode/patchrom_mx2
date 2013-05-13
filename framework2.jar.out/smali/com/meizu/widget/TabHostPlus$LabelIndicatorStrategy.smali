.class Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHostPlus.java"

# interfaces
.implements Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/TabHostPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/widget/TabHostPlus;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "label"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p2, p0, Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 723
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/CharSequence;Lcom/meizu/widget/TabHostPlus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 717
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 8

    .prologue
    .line 726
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    invoke-virtual {v5}, Lcom/meizu/widget/TabHostPlus;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 727
    .local v0, context:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 729
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x10900f4

    iget-object v6, p0, Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    #getter for: Lcom/meizu/widget/TabHostPlus;->mTabWidget:Lcom/meizu/widget/TabWidgetPlus;
    invoke-static {v6}, Lcom/meizu/widget/TabHostPlus;->access$1100(Lcom/meizu/widget/TabHostPlus;)Lcom/meizu/widget/TabWidgetPlus;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 732
    .local v3, tabIndicator:Landroid/view/View;
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 733
    .local v1, iconView:Landroid/widget/ImageView;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 736
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-gt v5, v6, :cond_0

    .line 740
    const v5, 0x10807de

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 741
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10600a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 744
    :cond_0
    return-object v3
.end method
