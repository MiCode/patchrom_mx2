.class public final Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;
.super Ljava/lang/Object;
.source "PinnedHeaderIndexerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/PinnedHeaderIndexerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placement"
.end annotation


# instance fields
.field public firstInSection:Z

.field public lastInSection:Z

.field private position:I

.field public sectionHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    return p1
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/PinnedHeaderIndexerListAdapter$Placement;->position:I

    .line 54
    return-void
.end method
