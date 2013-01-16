.class public Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;
.super Ljava/lang/Object;
.source "CompositeCursorAdapterMz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/CompositeCursorAdapterMz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# instance fields
.field count:I

.field cursor:Landroid/database/Cursor;

.field hasHeader:Z

.field idColumnIndex:I

.field showIfEmpty:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->showIfEmpty:Z

    .line 44
    iput-boolean p2, p0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getHasHeader()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    return v0
.end method

.method public getShowIfEmpty()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/meizu/widget/CompositeCursorAdapterMz$Partition;->showIfEmpty:Z

    return v0
.end method
