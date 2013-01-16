.class public Lcom/meizu/widget/TabHostPlus$TabSpec;
.super Ljava/lang/Object;
.source "TabHostPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/TabHostPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;

.field private mIndicatorStrategy:Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/widget/TabHostPlus;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "tag"

    .prologue
    .line 618
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->this$0:Lcom/meizu/widget/TabHostPlus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p2, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mTag:Ljava/lang/String;

    .line 620
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/String;Lcom/meizu/widget/TabHostPlus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 611
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/TabHostPlus$TabSpec;-><init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mIndicatorStrategy:Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/widget/TabHostPlus$TabSpec;)Lcom/meizu/widget/TabHostPlus$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/meizu/widget/TabHostPlus$TabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 659
    new-instance v0, Lcom/meizu/widget/TabHostPlus$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->this$0:Lcom/meizu/widget/TabHostPlus;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/meizu/widget/TabHostPlus$ViewIdContentStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;ILcom/meizu/widget/TabHostPlus$1;)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    .line 660
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/meizu/widget/TabHostPlus$TabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 676
    new-instance v0, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/meizu/widget/TabHostPlus$IntentContentStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/String;Landroid/content/Intent;Lcom/meizu/widget/TabHostPlus$1;)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    .line 677
    return-object p0
.end method

.method public setContent(Lcom/meizu/widget/TabHostPlus$TabContentFactory;)Lcom/meizu/widget/TabHostPlus$TabSpec;
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 668
    new-instance v0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->this$0:Lcom/meizu/widget/TabHostPlus;

    iget-object v2, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/CharSequence;Lcom/meizu/widget/TabHostPlus$TabContentFactory;)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mContentStrategy:Lcom/meizu/widget/TabHostPlus$ContentStrategy;

    .line 669
    return-object p0
.end method

.method public setIndicator(Landroid/graphics/drawable/Drawable;)Lcom/meizu/widget/TabHostPlus$TabSpec;
    .locals 3
    .parameter "icon"

    .prologue
    .line 634
    new-instance v0, Lcom/meizu/widget/TabHostPlus$IconIndicatorStrategy;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->this$0:Lcom/meizu/widget/TabHostPlus;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/meizu/widget/TabHostPlus$IconIndicatorStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;Landroid/graphics/drawable/Drawable;Lcom/meizu/widget/TabHostPlus$1;)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mIndicatorStrategy:Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;

    .line 635
    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Lcom/meizu/widget/TabHostPlus$TabSpec;
    .locals 3
    .parameter "view"

    .prologue
    .line 650
    new-instance v0, Lcom/meizu/widget/TabHostPlus$ViewIndicatorStrategy;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->this$0:Lcom/meizu/widget/TabHostPlus;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/meizu/widget/TabHostPlus$ViewIndicatorStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;Landroid/view/View;Lcom/meizu/widget/TabHostPlus$1;)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mIndicatorStrategy:Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;

    .line 651
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/meizu/widget/TabHostPlus$TabSpec;
    .locals 3
    .parameter "label"

    .prologue
    .line 626
    new-instance v0, Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->this$0:Lcom/meizu/widget/TabHostPlus;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/meizu/widget/TabHostPlus$LabelIndicatorStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/CharSequence;Lcom/meizu/widget/TabHostPlus$1;)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mIndicatorStrategy:Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;

    .line 627
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/meizu/widget/TabHostPlus$TabSpec;
    .locals 3
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 642
    new-instance v0, Lcom/meizu/widget/TabHostPlus$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->this$0:Lcom/meizu/widget/TabHostPlus;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/meizu/widget/TabHostPlus$LabelAndIconIndicatorStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/meizu/widget/TabHostPlus$1;)V

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$TabSpec;->mIndicatorStrategy:Lcom/meizu/widget/TabHostPlus$IndicatorStrategy;

    .line 643
    return-object p0
.end method
