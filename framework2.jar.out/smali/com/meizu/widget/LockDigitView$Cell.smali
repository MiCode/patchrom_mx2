.class public Lcom/meizu/widget/LockDigitView$Cell;
.super Ljava/lang/Object;
.source "LockDigitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/LockDigitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field static sCells:[[Lcom/meizu/widget/LockDigitView$Cell;


# instance fields
.field column:I

.field row:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 85
    filled-new-array {v5, v4}, [I

    move-result-object v2

    const-class v3, Lcom/meizu/widget/LockDigitView$Cell;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/meizu/widget/LockDigitView$Cell;

    sput-object v2, Lcom/meizu/widget/LockDigitView$Cell;->sCells:[[Lcom/meizu/widget/LockDigitView$Cell;

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 88
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 89
    sget-object v2, Lcom/meizu/widget/LockDigitView$Cell;->sCells:[[Lcom/meizu/widget/LockDigitView$Cell;

    aget-object v2, v2, v0

    new-instance v3, Lcom/meizu/widget/LockDigitView$Cell;

    invoke-direct {v3, v0, v1}, Lcom/meizu/widget/LockDigitView$Cell;-><init>(II)V

    aput-object v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .parameter "row"
    .parameter "column"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1, p2}, Lcom/meizu/widget/LockDigitView$Cell;->checkRange(II)V

    .line 100
    iput p1, p0, Lcom/meizu/widget/LockDigitView$Cell;->row:I

    .line 101
    iput p2, p0, Lcom/meizu/widget/LockDigitView$Cell;->column:I

    .line 102
    return-void
.end method

.method private static checkRange(II)V
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 127
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "row must be in range 0-3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-lt p1, v0, :cond_3

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_3
    return-void
.end method

.method static indexOf(II)I
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/meizu/widget/LockDigitView$Cell;->checkRange(II)V

    .line 123
    mul-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p1

    return v0
.end method

.method public static declared-synchronized of(II)Lcom/meizu/widget/LockDigitView$Cell;
    .locals 2
    .parameter "row"
    .parameter "column"

    .prologue
    .line 117
    const-class v1, Lcom/meizu/widget/LockDigitView$Cell;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lcom/meizu/widget/LockDigitView$Cell;->checkRange(II)V

    .line 118
    sget-object v0, Lcom/meizu/widget/LockDigitView$Cell;->sCells:[[Lcom/meizu/widget/LockDigitView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/meizu/widget/LockDigitView$Cell;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/meizu/widget/LockDigitView$Cell;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/widget/LockDigitView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/widget/LockDigitView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
