.class Lcom/meizu/widget/TabHostPlus$ViewIndicatorStrategy;
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
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/meizu/widget/TabHostPlus;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/TabHostPlus;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 821
    iput-object p1, p0, Lcom/meizu/widget/TabHostPlus$ViewIndicatorStrategy;->this$0:Lcom/meizu/widget/TabHostPlus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput-object p2, p0, Lcom/meizu/widget/TabHostPlus$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 823
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/TabHostPlus;Landroid/view/View;Lcom/meizu/widget/TabHostPlus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 817
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/TabHostPlus$ViewIndicatorStrategy;-><init>(Lcom/meizu/widget/TabHostPlus;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/meizu/widget/TabHostPlus$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method
