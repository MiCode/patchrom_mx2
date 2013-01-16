.class Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;
.super Ljava/lang/Object;
.source "TabHostPlus.java"

# interfaces
.implements Lcom/meizu/widget/TabHostPlus$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/TabHostPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Lcom/meizu/widget/TabHostPlus$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/widget/TabHostPlus;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/TabHostPlus;Ljava/lang/CharSequence;Lcom/meizu/widget/TabHostPlus$TabContentFactory;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "factory"

    .prologue
    .line 865
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 866
    iput-object p2, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 867
    iput-object p3, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->mFactory:Lcom/meizu/widget/TabHostPlus$TabContentFactory;

    .line 868
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->mFactory:Lcom/meizu/widget/TabHostPlus$TabContentFactory;

    iget-object v1, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/widget/TabHostPlus$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 880
    return-void
.end method
