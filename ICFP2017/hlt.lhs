% -*- latex -*-
\documentclass[acmlarge,dvipsnames,natbib]{acmart}
\usepackage[mathletters]{ucs}
\usepackage[utf8x]{inputenc}
%include polycode.fmt
%format .         = ". "
%format forall a         = "∀" a
%format _ (a)         = "_{" a "}"
%format ω = "\omega"
%format π = "\pi"
%format ρ = "\rho"
%subst keyword a = "\mathsf{" a "}"
% \usepackage[backend=biber,citestyle=authoryear,style=alphabetic]{biblatex}
\usepackage{natbib}
\usepackage{graphicx}
\usepackage{grffile}
\usepackage{longtable}
\usepackage{wrapfig}
\usepackage{rotating}
\usepackage[normalem]{ulem}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{textcomp}
\usepackage{amssymb}
\usepackage{capt-of}
\usepackage{hyperref}
\hypersetup{
    colorlinks,
    linkcolor={red!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}
  }
\usepackage{mathpartir}
% \usepackage{fontspec}
% \usepackage{unicode-math}
\usepackage[plain]{fancyref}
% TODO: \newcommand*{\fancyreflemlabelprefix}{lem}
\def\frefsecname{Section}
\def\freffigname{Figure}
\def\frefdefname{Definition}
\def\Frefdefname{Definition}
\def\fancyrefdeflabelprefix{def}
\frefformat{plain}{\fancyrefdeflabelprefix}{{\frefdefname}\fancyrefdefaultspacing#1#2}
\Frefformat{plain}{\fancyrefdeflabelprefix}{{\Frefdefname}\fancyrefdefaultspacing#1#2}

\newcommand{\case}[3][]{\mathsf{case}_{#1} #2 \mathsf{of} \{#3\}^m_{k=1}}
\newcommand{\data}{\mathsf{data} }
\newcommand{\where}{ \mathsf{where} }
\newcommand{\inl}{\mathsf{inl} }
\newcommand{\inr}{\mathsf{inr} }
\newcommand{\flet}[1][]{\mathsf{let}_{#1} }
\newcommand{\fin}{ \mathsf{in} }
\newcommand{\varid}[1]{\ensuremath{\Varid{#1}}}
\newcommand{\susp}[1]{⟦#1⟧}

\newcommand{\figuresection}[1]{\par \addvspace{1em} \textbf{\sf #1}}

\usepackage[colorinlistoftodos,prependcaption,textsize=tiny]{todonotes}
\setlength{\marginparwidth}{2.5cm} % Here's a size that matches the new PACMPL format -RRN
\usepackage{xargs}
\newcommandx{\unsure}[2][1=]{\todo[linecolor=red,backgroundcolor=red!25,bordercolor=red,#1]{#2}}
\newcommandx{\info}[2][1=]{\todo[linecolor=OliveGreen,backgroundcolor=OliveGreen!25,bordercolor=OliveGreen,#1]{#2}}
\newcommandx{\change}[2][1=]{\todo[linecolor=blue,backgroundcolor=blue!25,bordercolor=blue,#1]{#2}}
\newcommandx{\inconsistent}[2][1=]{\todo[linecolor=blue,backgroundcolor=blue!25,bordercolor=red,#1]{#2}}
\newcommandx{\improvement}[2][1=]{\todo[linecolor=Plum,backgroundcolor=Plum!25,bordercolor=Plum,#1]{#2}}
\newcommandx{\resolved}[2][1=]{\todo[linecolor=OliveGreen,backgroundcolor=OliveGreen!25,bordercolor=OliveGreen,#1]{#2}} % use this to mark a resolved question
\newcommandx{\thiswillnotshow}[2][1=]{\todo[disable,#1]{#2}} % will replace \resolved in the final document

% Peanut gallery comments by Ryan:
\newcommandx{\rn}[1]{\todo[]{RRN: #1}}

% Link in bibliography interpreted as hyperlinks.
\newcommand{\HREF}[2]{\href{#1}{#2}}

% \newtheorem{definition}{Definition}
% \newtheorem{lemma}{Lemma}
\newtheorem{remark}{Remark}

\newcommand\calc{{\ensuremath{λ^q}}}

\usepackage{booktabs} % For formal tables

% \usepackage[ruled]{algorithm2e} % For algorithms
% \renewcommand{\algorithmcfname}{ALGORITHM}
% \SetAlFnt{\small}
% \SetAlCapFnt{\small}
% \SetAlCapNameFnt{\small}
% \SetAlCapHSkip{0pt}
% \IncMargin{-\parindent}

% Metadata Information
\acmJournal{PACMPL}
\acmVolume{9}
\acmNumber{4}
\acmArticle{39}
\acmYear{2010}
\acmMonth{3}
\acmArticleSeq{11}

%\acmBadgeR[http://ctuning.org/ae/ppopp2016.html]{ae-logo}
%\acmBadgeL[http://ctuning.org/ae/ppopp2016.html]{ae-logo}


% Copyright
\setcopyright{acmcopyright}
%\setcopyright{acmlicensed}
%\setcopyright{rightsretained}
%\setcopyright{usgov}
% \setcopyright{usgovmixed}
%\setcopyright{cagov}
%\setcopyright{cagovmixed}

% DOI
\acmDOI{0000001.0000001}

% Paper history
\received{February 2017}
% \received{March 2009}
% \received[accepted]{June 2009}


% Document starts
\begin{document}
\DeclareUnicodeCharacter{8797}{\ensuremath{\stackrel{\scriptscriptstyle {\mathrm{def}}}{=}}}
\DeclareUnicodeCharacter{183}{\ensuremath{\cdot}} % ·

\newcommand\HaskeLL{Hask-LL}

% Title portion

% Put working title proposals here:
% \title{\HaskeLL}
% \title{\HaskeLL: Linear types with backwards compatibility in an established language}
% \title{\HaskeLL: Linear types with Backwards Compatibility}
\title{\HaskeLL: Systems Programming with \\ Backwards-Compatible Linear Types}


\author{Jean-Philippe Bernardy}
\affiliation{%
  \institution{Gothenburg University}
  \department{Department of Philosophy, Linguistics and Theory of Science}
  \streetaddress{Olof Wijksgatan 6}
  \city{Gothenburg}
  % \state{VA}
  \postcode{41255}
  \country{Sweden}}
\author{Mathieu Boespflug}
\author{Arnaud Spiwack}
\affiliation{%
  \institution{Tweag I/O}
  \city{Paris}
  % \state{VA}
  \postcode{???}
  \country{France}
}


\begin{abstract}
  \todo{Expand}
  This article introduces and describes a
  linearly-typed lazy programming language which is designed to be
  integrate well with an existing programming language, in particular
  in GHC/Haskell.
\end{abstract}


%
% The code below should be generated by the tool at
% http://dl.acm.org/ccs.cfm
% Please copy and paste the code instead of the example below. 
%
\begin{CCSXML}
<ccs2012>
<concept>
<concept_id>10011007.10011006.10011008.10011024</concept_id>
<concept_desc>Software and its engineering~Language features</concept_desc>
<concept_significance>500</concept_significance>
</concept>
<concept>
<concept_id>10011007.10011006.10011008.10011009.10011012</concept_id>
<concept_desc>Software and its engineering~Functional languages</concept_desc>
<concept_significance>300</concept_significance>
</concept>
<concept>
<concept_id>10011007.10011006.10011039</concept_id>
<concept_desc>Software and its engineering~Formal language definitions</concept_desc>
<concept_significance>300</concept_significance>
</concept>
</ccs2012>
\end{CCSXML}

\ccsdesc[500]{Software and its engineering~Language features}
\ccsdesc[300]{Software and its engineering~Functional languages}
\ccsdesc[300]{Software and its engineering~Formal language definitions}
%
% End generated code
%

\keywords{Haskell, laziness, linear logic, Linear types, systems
  programming}


% \thanks{This work is supported by FIXME (for de-anonymised version only) }


\maketitle

% The default list of authors is too long for headers}
% \renewcommand{\shortauthors}{G. Zhou et. al.}

\section{Introduction}

\rn{I think this intro can be focused and tightened up significantly.  SPJ may
  be interested in doing one in his widely-loved intro style.  Or I'm happy to
  take a stab at it.}

Several recent advances in typed functional programming applied
research have focused on extending type systems to make it easier to
encode strong invariants key to the {\em correctness} of programs.
Extensions from GADTs \cite{xi_guarded_2003}, to type-level functions
such as type families \cite{chakravarty_associated_2005-1}, to
increasingly automatic and complete promotion of term-level data types
to the type-level \cite{eisenberg_promoting_2014}. Yet in practice,
that a user's program is denotationally correct with respect to some
abstract specification matters little if does not abide to efficient
and timely release of scarce hardware resources. Indeed, {\em
  predictable} and {\em easy to reason about} use of resources is
frequently part of the specification too. We argue that teaching the
type system to track resources and their lifetimes will prove crucial,
for many applications, to resolving the impedance mismatch between the
expressive power of high-level programming languages and the age-old
low-level concerns of taming memory consumption and running fast on
real hardware.

\subsection{Resource tracking}

Scarce system resources include memory mappings, locks, sockets and
file handles, among others.  For instance, with no primitive support from the
programming language for managing these resources, acquiring a file
handle for reading and then disposing of a file handle looks something
like this:
\begin{code}
do  h <- openfile "myfile" ReadMode
    ...     -- some code that reads the file
    hClose h
\end{code}
This style of programming is unsafe. In the above style, there is nothing
preventing the programmer from accidentally reusing the file handle
after calling |hClose|, even though the handle is defunct forever
in the future, or indeed call |hClose| twice. In short, programming
with explicit file handle creation/deletion operators is prone to the
same bugs that plague programming with explicit
allocation/deallocation memory operators. Two common strategies to
avoid the bane of use-after-free and free-after-free bugs are:

\begin{enumerate}
\item restrict programs to using specifically provided higher-level
  combinators or patterns of programming that reduce their likelihood,
  as in streaming I/O frameworks and the RAII pattern popularized by
  modern C++. This is the purpose of various Haskell stream processing
  libraries such as iteratees~\cite{kiselyov_iteratees_2012},
  conduit~\cite{snoyman_conduit_2015},
  pipes~\cite{gonzalez_pipes_2015}, and
  machines~\cite{kmett_machines_2015}. The sheer number of libraries
  aiming at tackling this problem space speaks to its difficulty. None
  subsumes the others in expressive power.
\item make resource disposal implicit and completely automatic via a
  garbage collection (GC) mechanism. Kiselyov
  \cite{kiselyov_iteratees_2012} argues against fully automatic
  resource management for managing I/O resources, such as file
  descriptors and buffers. In particular, relying on the garbage
  collector to reclaim file descriptors, leads to file descriptor
  leaks.  In general, the problem with automatic resource management
  is that the runtime provides no guarantees as to the timeliness of
  the resource reclaiming process. File handle finalizers might run at
  an arbitrarily late time in the future. Locks are certainly a bad
  idea to release automatically for this reason.
\end{enumerate}

We propose to follow a third approach: tracking resources in the type
system. In fact, a cornerstone of the Rust programming
language~\cite{matsakis_rust_2014} is that it provides this resource
safety out-of-the-box. Through its borrow checker, Rust captures a
notion of affine types in its type system. The lifetime analysis is
powerful enough to, for example, ensure that a file handle never escapes
the current lexical scope:

\improvement{code alignment}
\begin{verbatim}
{
  let path = Path::new("hello.txt");
  let mut file = try!(File::open(&path));
  ... // some code that reads the file
}
// The variable `path` falls out of scope. Rust prevents `path`
// from exiting this scope, as part of a closure or otherwise.
// Therefore the file can be, and in fact is, closed when
// this scope ends.
\end{verbatim}

The lifetime analysis in Rust makes it possible to remain resource
safe without losing much expressive power at all.

\subsection{Memory management}

A central tenet of this paper is,
\begin{center}
\em memory is just a system resource like any other, which, as such,
deserves the parsimonious consumption and timely release that other
resources can.
\end{center}
Fully automatic memory management is certainly convenient, and an
effective means of avoiding use-after-free and free-after-free bugs,
since it is the language runtime that guarantees, via a global dynamic
analysis, that resources are reclaimed only when it is entirely safe
to do so. But this analysis is expensive to run. For
this reason, resources are reclaimed in batches, to amortize its cost,
only when resource pressure is deemed to warrant reclaiming 
resources. Worse, this global analysis, aka garbage
collection, often requires exclusive access to resources, hence
stalling and potentially starving other threads of control.

In interactive low-latency systems (web servers, graphical user
interfaces, high-speed trading systems, real-time analytics and query
services, games, etc), pausing threads performing useful work is
problematic. Because these pauses can happen at any time, for
indeterminate periods of time, an unbounded number of times, the
tail-end of runtime distributions increases. This in turn makes
synchronization among many threads more costly and less frequent,
because threads can only synchronize as often as the last thread
reaches the synchronization point.

Speeding up this global analysis, be it by considering only a portion
of the entire heap of resources most of the time (generational GC's),
making the analysis interruptible (incremental GC's) or coalescing
resources into coarser grained units that are reclaimed atomically
(compact regions), is a decent workaround for many applications. But
better yet not have to perform this analysis at all! Or over a much
smaller heap.

Whereas GC pauses have frequently been observed to reach 50ms or more
for large heaps of long-lived
objects\footnote{\url{https://blog.pusher.com/latency-working-set-ghc-gc-pick-two/}},
games typically target a maximum latency budget of 16ms per rendered
frame, corresponding to a 60 frames per second refresh rate. Whereas
incremental GC's might target single digit millisecond latencies,
often at a substantial cost on throughput, bulk synchronous parallel
programs (see below) synchronize over networks with single digit
microsecond roundtrip latencies.\improvement{Probably: do not cite BSP yet,
  instead speak of HPC workloads}

\subsubsection{Latency matters}

The following example is extracted from a real-world business
use case at Pusher, cited above. The challenge is to maintain a
concurrent queue of messages. Each message can be of arbitrary size,
but usually in the order of kilobytes. There can be many hundreds of
thousands of message to maintain in memory. Old messages are evicted,
upon being read by clients, or if the queue grows too long (so it is
okay to lose messages). Any client can also request for any message in
the queue to be removed. In short, the concurrent queue supports the
following operations:
\rn{This still bothers me.  I'd really like to change it to
  include MsgId.  \verb|push :: Queue -> MsgId -> Msg -> IO ()|.}
\begin{code}
push :: Queue -> Msg -> IO ()
delete :: Queue -> Msg -> IO ()
-- Remove the N oldest messages.
evict :: Queue -> Int -> IO (Vector Msg)
\end{code}

If the queue grows very large, then most objects in the queue are very
long-lived. This runs counter to the ``generational hypothesis'' that
is so crucial to the performance of generational garbage collectors.
In this example, most objects that get created do {\em not} die
shortly after being created. So a partial sweep of only the most
recent allocations is unlikely to find any garbage. Yet performing
a full sweep of the entire object graph is onerous, and wasteful.

The latency observed on this use-case caused Pusher to walk away from
Haskell\footnote{\url{https://blog.pusher.com/golangs-real-time-gc-in-theory-and-practice/}}. Such
a queue is representative of one use-case which motivated this work:
an in-memory cache for a distributed on-disk object storage system.

\paragraph{bulk synchronous programming} A very popular model for
applications in high-performance computing is bulk synchronous
parallelism \cite{valiant_bridging_1990}. In this model, computations
are structured as iterating a three step process:
\begin{description}
\item[Compute:] simultaneously start as many threads as there are
  cores in the cluster, each computing over a subset of the data.
\item[Communicate:] all processes communicate results with other nodes
  (\emph{e.g.} their neighbors in a mesh physics simulation).
\item[Synchronize:] the next iteration does not start until all threads
  synchronize on a global write barrier.
\end{description}
A new cycle begins when a previous one finishes. Even interactive user
queries with a total latency envelope of 100ms can be processed as a
sequence of dozens of such parallel phases. The message sends of the
communicate phase can be performed across a cluster in mere
microseconds on current hardware.

As we start increasing the number of threads to synchronize on the
global barrier to thousands of threads and beyond, any variance in the
thread runtimes increases the time to fully reaching the barrier for
all threads. Performance crucially depends on achieving predictable
latencies, because the lower the variance, the tighter we space each
barrier in time, and the less threads sit idle waiting on their peers.

There are of course ways to perform latency hiding. Threads can be
oversubscribed, data can be prefetched, or de-normalized (made
redundant copies of in many locations) and computations duplicated to
reduce the number of neighbours threads have to communicate with.
These solutions all come at a complexity cost in systems that have
often already far exceeded any reasonable complexity budget.
Maintaining low and predictable latencies is therefore a means to
achieve simpler designs.

\paragraph{Stream processing} The Square Kilometer
Array\footnote{\url{https://www.skatelescope.org/}} is projected to produce
hundreds of terabytes per second of raw data each second streaming
from its thousands of sensors. Keeping up with such a deluge requires
processing the data over multiple machines at once, since the
necessary throughput far exceeds the memory bandwidth of a single
machine. Yet as we scale up the amount of hardware resources that we
throw at a problem, it is the total energy cost of the system that
eventually becomes a bottleneck \cite{doe_exascale_2010}. The total
amount of memory available on each machine is ultimately limited by
cost and energy requirements. This means that there is only so much
data that can remain in-flight in the system at any given time. The
mean throughput of a steady state system is governed by Little's law
\cite{little_proof_1961}:

\begin{displaymath}
  \textrm{mean throughput} = {\textrm{mean number of in-flight
      requests} \over \textrm{mean request latency}}
\end{displaymath}

Since the number of in-flight requests is limited by the available
memory, higher throughput can only be achieved by decreasing
latencies. In such a setting, GC productivity becomes crucial to
optimize for.

\subsubsection{Easing GC pressure with compact regions}

In general, in any mark-and-sweep GC the time necessary for a full
garbage collection pass is proportional to the amount of live data in
memory. Or rather, to the number of objects. A recent proposal
\cite{yang_compact_2015} has suggested that an effective means of
reducing the number of objects that the GC needs to traverse is to
{\em compact} many long-lived objects into a single immutable chunk of
memory. In effect, the lifetimes of these objects are assumed equal.
The GC can pretend that the chunk is a single object because objects
inside it live and die together, in one fell swoop.

This approach is certainly a useful tool for the discriminating
high-performance programmer. We believe that tracking resources in the
type system can work hand-in-hand to enhance the power of this tool.

Consider the queue example again. One possible implementation strategy
consists in representing the queue as a chain of compact regions
holding $k$ messages rather than a chain of messages. This will indeed
reduce the pressure on the garbage collector. But at the cost of
having the |push| operation have an $O(k)$ worst-case time due to
sealing a region.

\subsubsection{the allocation hierarchy}

Because either memory allocation or memory reclamation (but often
both) are expensive operations, it becomes increasingly harder to fit
within a set latency budget the further down the ``allocation
hierarchy'' we go:
\begin{enumerate}
\item {\bf No allocation:} The cheapest allocation is the one that
  does not exist. Any allocation guaranteed by the compiler not to
  occur is one that does not eat into the application's small latency
  budget, and that's a fact the programmer can count on.
\item {\bf Off GC-heap allocation:} if you must allocate, then better
  allocate outside of the GC's bailiwick, in a separate memory region.
  In this way, the size of the GC heap does not increase, so GC pauses
  are shorter and farther between.
\item {\bf On GC-heap allocation:} If neither of the above are
  possible, or for small short-lived objects that never graduate
  beyond a generation-0 garbage sweep, which is cheap, then perhaps
  playing it fast and loose by allocating in the main heap and letting
  the GC take care of the rest can be acceptable.
\end{enumerate}

We propose, in this article, an extension to Haskell's type system,
which we call \HaskeLL{}. \HaskeLL fits the top two tiers of this
hierarchy:\improvement{we mostly address (2) in this article, though
  we keep fusion very much in mind, probably rephrase}
\begin{enumerate}
\item Fusion is a common technique for statically eliminating
  redundant allocations while retaining good code modularity. While
  first-class type system support for tracking resources certainly
  is not a necessity to perform fusion, a common complaint born out of
  using \verb|RULE| pragma based fusion on large codebases is that it
  is brittle and hard to reason about. Our type system {\em
    guarantees} fusion where the programmer has expressed an intent.
  It can therefore guarantee the absence of allocation at precise
  points in the program. Crucially, this guarantee is robust in the
  face of compiler optimizations.
\item where allocation cannot be avoided without trading in an
  excessive time budget, we allow safely allocating in a dedicated
  heap not managed by the GC, where objects can be deallocated
  explicitly at exactly the right time, yet without compromising
  memory safety.
\end{enumerate}
\subsection{Contributions}

The design for \HaskeLL{} is backed by a core calculus \calc{}.
\calc{} is a linearly-typed extension of the $λ$-calculus with data
types, with the following characteristics:

\begin{itemize}
\item Implicit conversions to and from the linear world and
  the unrestricted world, together with linearity polymorphism for
  higher order functions.
\item A lazy dynamic semantics which include explicit deallocation of
  linear data.
\item Is designed to be compatible with in an existing rich programming
  language. 
  \todo{Do we speak of the prototype at this point? I
    [aspiwack] would rather leave it at that and prove this assertion
    in the body of the article by citing the prototype (and maybe some
    GHC things with which we are compatible: \emph{e.g.} the kind
    system (which is not affected) and dependent types).}
\end{itemize}

\section{A taste of \HaskeLL}
\label{sec:programming-intro}
Before diving into the technical details, let us give an overview of
\HaskeLL, the proposed design for extending Haskell with linear types,
by means of a number of examples.

Firstly, along with the usual arrow type for intuitionistic functions,
we propose an additional arrow type for linear arrows, written
$A ⊸ B$. In the body of a linear function, the type system tracks that
there is exactly one copy of the parameter available.

\begin{code}
f :: A ⊸ B
f x = {- |x| has multiplicity $1$ here -}
\end{code}

We say that the \emph{multiplicity} of |x| is $1$ in the body of |f|. On the contrary, we say
that unrestricted (non-linear) parameters have multiplicity $ω$ (which
is to be understood as \emph{any finite number}). We also call
functions linear if they have type $A ⊸ B$ and unrestricted if they
have $A → B$.

To clarify the meaning of multiplicities, here are a few examples of what is
allowed or not:
\rn{This grows a bit tedious.  Maybe listing the one ``cannot'' and then
  describing the remaining cases collectively?}
\begin{enumerate}

\item An unrestricted (multiplicity $ω$) value 
  \begin{enumerate}
  \item {\bf can} be passed to a linear function.
  \item {\bf can} be passed to a unrestricted function.  
  \item {\bf can} be returned by a linear function.
  \item {\bf can} be returned by a unrestricted function.    
  \end{enumerate}  

\item A linear (multiplicity $1$) value
  \begin{enumerate}
  \item  {\bf can} be passed to a linear function.
  \item  {\bf cannot} be passed to a unrestricted function.
  \item  {\bf can} be returned by a linear function (and
     the type-system guarantees that it can be promoted to a unrestricted
     value when the function is called in an unrestricted context).
  \end{enumerate}

% RRN: This looks like a duplicate:
% \item A linear value {\bf can} be returned by a linear function.

\end{enumerate}

Indeed, when we say that a function is linear, we refer to its domain,
not its co-domain. Hence, linearity of a function does not influence
what it can return, only what it can take as arguments.

The same examples can be expressed in code: the function |g| below
admits the following implementations, but not the last one:
\begin{code}
f :: a ⊸ a
g :: (Int ⊸ Int -> r) -> Int ⊸ Int -> r

g k x y = k (f x) y      -- Valid
g k x y = k x (f y)      -- Valid
g k x y = k x y          -- Valid
g k x y = k y x          -- Invalid, x has multiplicity 1
\end{code}

Using the new linear arrow, we can define a linear version of the list
type, as follows:
\begin{code}
data List a where
  [] :: List a
  (:) :: a ⊸ List a ⊸ List a
\end{code}
That is, given a list |xs| with multiplicity $1$, pattern-matching will
yield the sub-data of |xs| will multiplicity $1$. Thus the above list
may contain resources without compromising safety.

Many list-based functions conserve the multiplicity of data, and thus can
be given a more precise type. For example we can write |(++)|
as follows:
\begin{code}
(++) :: List a ⊸ List a ⊸ List a
[]      ++ ys = ys
(x:xs)  ++ ys = x : (xs ++ ys)
\end{code}
The type of |(++)| tells us that if we have a list |xs| with
multiplicity $1$, appending any other list to it will never duplicate
any of the elements in |xs|, nor drop any element in |xs|.

A major benefit of \HaskeLL{} is that one can write linear code
whenever it is possible, and use it in unrestricted contexts
anyway. That is, in \HaskeLL{}, giving a more precise type to |(++)|
strengthens the contract that the implementation of |(++)| must
satisfy, but it does not restrict its usage. That is, it is perfectly
legal to provide an |xs| of multiplicity $ω$ to |(++)| ($1$ is, after
all, a finite multiplicity). If both |xs| and |ys| have multiplicity
$ω$, |xs++ys| can be \emph{promoted} to multiplicity $ω$. In terms of resources,
neither |xs| nor |ys| can contain resources, so
neither can |xs++ys|: it is thus safe to share |xs++ys|.

For an existing language, being able to strengthen |(++)| in a {\em
  backwards-compatible} way is a major boon.
%
Of course, not all functions are linear: a function may legitimately
demand unrestricted input, even to construct an output with
multiplicity $1$. For example the function repeating its input
indefinitely needs to be unrestricted:
\begin{code}
  cycle :: List a → List a
  cycle l = l ++ cycle l
\end{code}

The implicit conversions between multiplicities make it so that for
first-order code linear functions are more general. Higher-order code
is more complex, so we introduce multiplicity polymorphism as a way to
preserve effective code sharing of higher-order functions. For
example, the standard |map| function over (linear) lists:
\begin{code}
map f []      = []
map f (x:xs)  = f x : map f xs
\end{code}
can be given the two following incomparable types:
\begin{code}
  (a ⊸ b) -> List a ⊸ List b
\end{code}
and
\begin{code}
  (a -> b) -> List a -> List b
\end{code}

\HaskeLL{} generalises over linear and unrestricted arrows with the
syntax $A →_ρ B$. Therefore, |map| can be given the following
most general type: subsuming both versions is
\begin{code}
  ∀ρ. (a -> _ ρ b) -> List a -> _ ρ List b
\end{code}
%
Likewise, function composition can be given the following type:
\begin{code}
(∘) :: forall π ρ. (b → _ π c) ⊸ (a → _ ρ b) → _ π a → _ (ρ π) c
(f ∘ g) x = f (g x)
\end{code}
That is: two functions of accepting arguments of arbitrary
multiplicities respectively $ρ$ and $π$ can be composed into a
function accepting arguments of multiplicity $ρπ$ (\emph{i.e.} the
product of $ρ$ and $π$ --- see \fref{def:equiv-mutiplicity}).

\improvement{Let's change the segue into this idea, and just introduce
bang with something like ``constructors can also require unrestricted
arguments''.}
One might be tempted to mark all data constructors as linear, i.e.
with only |⊸|-arrows in their types, in the style of the |List| type
above. After all, linear constructors, like any linear function, are
happy to be provided resources of any multiplicity. However, $ω$-multiplicated
arrows in constructors are useful too, as the following data type
illustrates\footnote{The type constructor |Bang| is in fact an
  encoding of the so-called \emph{exponential} modality written ${!}$
  in linear logic.}:
\begin{code}
  data Bang a where
    Bang :: a → Bang a
\end{code}
\improvement{rename |Bang| \emph{e.g.} into |Unrestricted|}
It is used to indicate that a linear function returns $ω$-multiplicated
results. For example:
\begin{code}
  copy :: Bool ⊸ Bang Bool
  copy True = Bang True
  copy False = Bang False
\end{code}
We stress that the above is not the same as the linear identity
function, |id :: Bool ⊸ Bool|. Indeed, |id| conserves the multiplicity of
|Bool|, whereas |copy| \emph{always} returns an $ω$-multiplicated value,
regardless of the multiplicity of its argument.

\subsection{A GC-less queue API}
\label{sec:queue-api}
With linear types, it is possible to write a {\em pure} and {\em
  memory-safe} API for managing foreign C data. Indeed, since linear
data must be used \emph{exactly once}, it means that such data is
statically guaranteed to eventually be consumed by the program (no
unfreed garbage) and that the data cannot be referred to after being
consumed (freedom from use-after-free or free-after-free bugs).

Concretely, operations that do not free the data structure return a new
copy of the data structure (which may be the same as the original).
For instance, pushing in a queue would have the following type:
\begin{code}
push :: Msg -> Queue ⊸ Queue
\end{code}
While functions to free the data structure would simply consume the
argument as follows:
\begin{code}
free :: Queue ⊸ ()
\end{code}

Thus, linearity makes it possible to statically manage long-lived data without
adding to GC pressure, because the data lives in a foreign heap.
A complete API for queues with random access deletion could
be typed as follows (|Msg| must be |Storable| to (un)marshall values
to/from the unrestricted GC'ed heap):
\improvement{I suggest to remove the |Storable| instance here: it is
  not part of the API but a requirement for the implementation. That
  way we will not need to name this particular variant, and just
  require for the reference implementation that |Msg| is equipped with
 |loadMsg| and |freeMsg|. }
\begin{code}
instance Storable Msg

alloc   :: (Queue ⊸ Bang a) ⊸ a
free    :: Queue ⊸ ()

push    :: Msg -> Queue ⊸ Queue
delete  :: Msg -> Queue ⊸ Queue
evict   :: Int -> Queue ⊸ (Queue, Bang (Vector Msg))
\end{code}
There are a few things going on in this API:
\begin{itemize}
\item |alloc| opens a new scope, delimited by the dynamic extent of
  its argument function. This function is provided a fresh queue,
  allocated in the foreign heap (for example using \verb|malloc()|).
  As enforced by the type-system, this queue must be used exactly once.
  The return type of argument
  function is |Bang a|, ensuring that no linear value can be returned:
  in particular the |Queue| must be consumed.
\item Messages of type |Msg| are copied into unrestricted Haskell values
  (hence managed by the garbage collector) when they are returned by
  |evict|. The hypothesis is that while there is a very large amount
  of messages in the queue, there will at any given time be very few
  messages outside of it, managed by the garbage collector. Because these objects will
  typically be short-lived, they will not normally survive a ``generation
  0'' sweep.
\item Because the queue allocated by |alloc| must be consumed before
  reaching the end of the scope, |free| must be called. Indeed, there
  is no other way to properly get rid of the queue. Calling any of the
  other linear functions does ``consume'' the queue, but returns a new
  one, along with the obligation of getting rid of that one!
\end{itemize}

\paragraph{Reference implementation}
The intention behind this queue API is to bind a C implementation of
a queue data structure which manages memory explicitly. However, we
can give an implementation directly in \HaskeLL{}. For simplicity
|Queue|s and |Vector|s are represented simply as lists. Therefore this
implementation is by no mean efficient: it may, however serve as an
executable specification for explicit memory management as we will see
in \fref{sec:dynamics}.
\begin{code}
type Queue = List Msg
type Vector x = List Msg
\end{code}
The |Storable| class demands that a linear value can be made
non-linear (eg. by making a deep copy of it), and that it can be
freed.
\begin{code}
class Storable a where
  load :: a ⊸ Bang a
  store :: a ⊸ a -- TODO: subtle
  free' :: a ⊸ ()
\end{code}
Allocation can be implemented simply by calling the continuation. Free
needs to free all messages. As will be apparent when we define the
operational semantics for our language, the queue will reside outside
of GC heap. While |alloc| itself only allocates an empty list, all
functions which manipulate the queue will do so on the non-GC heap.
\begin{code}
alloc   :: (Queue ⊸ Bang a) ⊸ a
alloc k = case k [] of
  Bang x -> x

free    :: Queue ⊸ ()
free (x:xs) = case storableFree x of
  () -> free' xs
free [] = ()
\end{code}
The queue-manipulation functions look like regular Haskell code, with
the added constraint that linearity of queue objects is type-checked.
\begin{code}
push    :: Msg -> Queue ⊸ Queue
push msg msgs = store msg:msgs

delete :: Msg -> Queue ⊸ Queue
delete msg [] = []
delete msg (x:xs) = case load x of
  Bang x' -> if x' == msg  then xs
                           else x':delete msg xs

evict :: Int -> Queue ⊸ (Queue, Bang (Vector Msg))
evict 0  q       = (q, Bang [])
evict n  []      = ([], Bang [])
evict n  (x:xs)  = case (load x, evict (n-1) xs) of
  (Bang x', (xs',Bang v')) -> (xs',Bang (x':v'))
\end{code}


\section{\calc{} statics}
\label{sec:statics}
In this section we turn the calculus at the core of \HaskeLL{}, namely
\calc{}, and give a step by step account of its syntax and typing
rules.

In \calc{}, objects are classified into two categories: \emph{linear} objects,
which must be used \emph{exactly once} on each code path, and
\emph{unrestricted} objects which can be used an arbitrary number of
times (including zero).

The best way to think of a linear object is to see it as an object that need not
be controlled by the garbage collector: \emph{e.g.} because they are
scarce resources, because they are controlled by foreign code, or
because this object will not actually exist at run time because it will
be fused away. The word \emph{need} matters here: because of
polymorphism, it is possible for any given linear object to actually be controlled
by the garbage collector (but may not be), and
so, for most purposes, it must be treated as if it it were not.

This framing drives the details of \calc{}. In particular unrestricted
objects cannot contain linear objects, because the garbage collector needs to
control transitively the deallocation of every sub-object: otherwise we may
have dangling pointers or memory leaks. On the other hand it is
perfectly fine for linear objects to refer to unrestricted objects. So any
object containing a linear object must also be linear. Crucially this property
applies to closures as well (both partial applications and lazy
thunks): \emph{e.g.} a partial application of a function to a linear
object is linear. More generally, the application of a function
to a linear object is linear, since it is, in general, a lazy
thunk pointing to that linear object. (In fact, even in a strict
language, the result may contain the linear argument and so must be
linear.)

\subsection{Typing contexts}
\label{sec:typing-contexts}

In \calc{}, each variable in typing contexts is annotated with the number of times
that the program must use the variable in question. We call this
number of times the \emph{multiplicity} of the variable.

Concrete multiplicities are either $1$ or $ω$: when the multiplicity
is $1$, the program \emph{must} consume the variable exactly once;
when the multiplicity is $ω$, the program \emph{may} consume the
variable any number of times (possibly zero). For the sake of
polymorphism, multiplicities are extended with multiplicity
\emph{expressions}, which contain variables (ranged over by the
metasyntactic variables \(π\) and \(ρ\)), sum\improvement{We use sums
  nowhere in the examples; shall we remove this? -- [Aspiwack] in the
  case of $1$/$ω$ multiplicity $π+ρ$ is always (implicitly) $ω$, so
  there may indeed be no benefit to formal sums in the scope of this
  paper}, and product. The complete syntax of multiplicities and
contexts can be found in \fref{fig:contexts}.

In addition, multiplicities are equipped with an equivalence relation,
written $(=)$, and defined as follows:
\begin{definition}[equivalence of multiplicities]
  \label{def:equiv-mutiplicity}
  The equivalence of multiplicities is the smallest transitive and
  reflexive relation, which obeys the following laws:
\begin{itemize}
\item $+$ and $·$ are associative and commutative
\item $1$ is the unit of $·$
\item $·$ distributes over $+$
\item $ω · ω = ω$
\item $1 + ω = ω$
\item $1 + 1 = ω$
\item $ω + ω = ω$
\end{itemize}
\end{definition}
Thus, multiplicities form a semi-ring (without a zero), which extends to a
module structure on typing contexts as follows.

\begin{definition}[Context addition]~
  \begin{align*}
    (x :_p A,Γ) + (x :_q A,Δ) &= x :_{p+q} A, (Γ+Δ)\\
    (x :_p A,Γ) + Δ &= x :_p A, Γ+Δ & (x ∉ Δ)\\
    () + Δ &= Δ
  \end{align*}
\end{definition}
Context addition is total: if a variable occurs in both operands the
first rule applies (with possible re-ordering of bindings in $Δ$), if
not the second or third rule applies.

\begin{definition}[Context scaling]
  \begin{displaymath}
    p(x :_q A, Γ) =  x :_{pq} A, pΓ
  \end{displaymath}
\end{definition}

\begin{lemma}[Contexts form a module]
  The following laws hold:
  \begin{align*}
    Γ + Δ &= Δ + Γ\\
    p (Γ+Δ) &= p Γ + p Δ\\
    (p+q) Γ &= p Γ+ q Γ \\
    (pq) Γ &= p (q Γ)\\
    1 Γ &= Γ
  \end{align*}
\end{lemma}

The equivalence relation is lifted to contexts in the obvious way. In
the typing rules contexts can always be substituted for other
equivalent contexts.
\subsection{Typing}

The static semantics of \calc{} is expressed in terms of the
familiar-looking judgement \(Γ ⊢ t : A\). The meaning of this
judgement, however, may be less familiar: remember that
variable bindings in $Γ$ are annotated with a multiplicity. The
judgement \(Γ ⊢ t : A\) ought to be read as follows: the term $t$
consumes $Γ$ and builds \emph{exactly one} $A$. This section defines
the judgement \(Γ ⊢ t : A\).

\begin{figure}
  \figuresection{Multiplicities}
  \begin{align*}
    p,q &::= 1 ~||~ ω ~||~ π ~||~ p+q ~||~ p·q
  \end{align*}
  \figuresection{Contexts}
  \begin{align*}
    Γ,Δ & ::=\\
        & ||  x :_q A, Γ & \text{multiplicity-annotated binder} \\
        & ||     & \text {empty context}
  \end{align*}

  \figuresection{Type declarations}
  \begin{align*}
    \data D  \mathsf{where} \left(c_k : A₁ →_{q₁} ⋯    A_{n_k} →_{q_{n_k}} D\right)^m_{k=1}
  \end{align*}

  \figuresection{Types}
  \begin{align*}
  A,B &::=\\
      & ||  A →_q B &\text{function type}\\
      & ||  ∀ρ. A &\text{multiplicity-dependent type}\\
      & ||  D &\text{data type}
  \end{align*}

  \figuresection{Terms}
  \begin{align*}
    e,s,t,u & ::= \\
            & ||  x & \text{variable} \\
            & ||  λ(x:_qA). t & \text{abstraction} \\
            & ||  t_q s & \text{application} \\
            & ||  λπ. t & \text{multiplicity abstraction} \\
            & ||  t p & \text{multiplicity application} \\
            & ||  c t₁ … t_n & \text{data construction} \\
            & ||  \case[p] t {c_k  x₁ … x_{n_k} → u_k}  & \text{case} \\
            & ||  \flet x_1 :_{q₁}A₁ = t₁ … x_n :_{q_n}A_n = t_n \fin u & \text{let}
  \end{align*}

  \caption{Syntax of the linear calculus}
  \label{fig:syntax}
  \label{fig:contexts}
\end{figure}

The types of \calc{} (see \fref{fig:syntax}) are simple
types with arrows (albeit multiplicated ones), data types, and multiplicity
polymorphism.  The multiplicated function type is a generalization of the
intuitionistic arrow and the linear arrow. We use the following
notations:
\begin{itemize}
\item \(A → B ≝  A →_ω B\)
\item \(A ⊸ B ≝ A →_1 B\)
\end{itemize}
The intuition behind the multiplicity-bearing arrow \(A →_q B\) is that you can
get a \(B\) if you can provide an \(A\) with multiplicity \(q\). Note in
particular that when one has $x :_ω A$ and $f :_1 A ⊸ B$, the call
$f x$ is well-typed. Therefore, the constraints imposed by multiplicities on
arrow types are dual to those they impose on variables in the context:
a function of type $A→B$ \emph{must} be applied to an argument of
multiplicity $ω$, while a function of type $A⊸B$ \emph{may} be applied to an
argument of multiplicity $1$ or $ω$.
One may thus expect the type $A⊸B$ to be a subtype of $A→B$, however
this does not hold, for the mere reason that there is no notion of
subtyping in \calc{}. Indeed, our objective is to integrate with
Haskell, which is based on Hindley-Milner-style
polymorphism. Subtyping and polymorphism do not mesh well: this is the
reason why \calc{} is based on polymorphism rather than subtyping.

Data type declarations, also presented in \fref{fig:syntax},
deserve some additional explanation.
\begin{align*}
  \data D  \mathsf{where} \left(c_k : A₁ →_{q₁} ⋯    A_{n_k} →_{q_{n_k}} D\right)^m_{k=1}
\end{align*}
The above declaration means that \(D\) has \(m\) constructors
\(c_k\), for \(k ∈ 1…m\), each with \(n_k\) arguments. Arguments of
constructors have a multiplicity, just like arguments of functions:
an argument of multiplicity $ω$ means that the data type can store,
at that position, data which \emph{must} have multiplicity $ω$;
while a multiplicity of $1$ means that data at that position
\emph{can} have multiplicity $1$ (or $ω$). A further requirement is
that the multiplicities $q_i$ must be concrete (\emph{i.e.} either
$1$ or $ω$).

For most purposes, $c_k$ behaves like a constant with the type
$A₁ →_{q₁} ⋯ A_{n_k} →_{q_{n_k}} D$. As the typing rules of
\fref{fig:typing} make clear, this means in particular that from a an
object $d$ of type $D$ with multiplicity $ω$, pattern matching
extracts the sub-data of $d$ with multiplicity $ω$. Conversely, if all
the arguments of $c_k$ have multiplicity $ω$, $c_k$ constructs $D$
with multiplicity $ω$.

Note that constructors with arguments of multiplicity $1$ are not more
general than constructors with arguments of multiplicity $ω$, because if,
when constructing $c u$, with the argument of $c$ of multiplicity $1$, $u$
\emph{may} be either of multiplicity $1$ or of multiplicity $ω$, dually, when
pattern-matching on $c x$, $x$ \emph{must} be of multiplicity $1$ (if the
argument of $c$ had been of multiplicity $ω$, on the other hand, then $x$
could be used either as having multiplicity $ω$ or $1$).

The following examples of data-type declarations illustrate the role of
multiplicities in constructor arguments:
\begin{itemize}
\item The type
  $\data \varid{Pair} A B \where \varid{Pair} : A →_ω B →_ω
  \varid{Pair} A B$ is the intuitionistic product (usually written
  $A×B$)
\item The type
  $\data \varid{Tensor} A B \where \varid{Tensor} : A →_1 B →_1
  \varid{Tensor} A B$ is the linear tensor product (usually written
  $A⊗B$)
\item The type
  $\data \varid{Bang} A \where \varid{Bang} : A→_ω \varid{Bang} A$ is
  the exponential modality of linear logic (usually written ${!}A$)
\end{itemize}

The term syntax (\fref{fig:syntax}) is that of a
type-annotated (\textit{à la} Church) simply typed $λ$-calculus
with let-definitions. Binders in $λ$-abstractions and type definitions
are annotated with both their type and their multiplicity (echoing the
typing context from Section~\ref{sec:typing-contexts}). Multiplicity
abstraction and application are explicit.

It is perhaps more surprising that applications and cases are
annotated by a multiplicity. This information is usually redundant, but we
use it in Section~\ref{sec:dynamics} to define a compositional
dynamic semantics with prompt deallocation of data. We sometimes omit
the multiplicities or type annotations when they are obvious from the
context, especially in the case of applications.

%%% typing rule macros %%%
\newcommand{\apprule}{\inferrule{Γ ⊢ t :  A →_q B  \\   Δ ⊢ u : A}{Γ+qΔ ⊢ t_q u  :  B}\text{app}}
\newcommand{\varrule}{\inferrule{ }{ωΓ + x :_1 A ⊢ x : A}\text{var}}
\newcommand{\caserule}{\inferrule{Γ   ⊢  t  : D  \\ Δ, x₁:_{pq_i} A_i, …,
      x_{n_k}:_{pq_{n_k}} A_{n_k} ⊢ u_k : C \\
      \text{for each $c_k : A_1 →_{q_1} … →_{q_{n-1}} A_{n_k} →_{q_{n_k}} D$}}
    {pΓ+Δ ⊢ \case[p] t {c_k  x₁ … x_{n_k} → u_k} : C}\text{case}}
%%% /macros %%%

\begin{figure}
  \begin{mathpar}
    \varrule

    \inferrule{Γ, x :_{q} A  ⊢   t : B}
    {Γ ⊢ λ(x:_q A). t  :  A  →_q  B}\text{abs}

    \apprule

    \inferrule{Δ_i ⊢ t_i : A_i \\ \text {$c_k : A_1 →_{q_1} … →_{q_{n-1}}
        A_n →_{q_n} D$ constructor}}
    {ωΓ+\sum_i q_iΔ_i ⊢ c_k  t₁ … t_n : D}\text{con}

    \caserule

    \inferrule{Γ_i   ⊢  t_i  : A_i  \\ Δ, x₁:_{q₁} A₁ …  x_n:_{q_{n}} A_n ⊢ u : C }
    { Δ+\sum_i q_iΓ_i ⊢ \flet x_1 :_{q₁}A_1 = t₁  …  x_n :_{q_n}A_n = t_n  \fin u : C}\text{let}

    \inferrule{Γ ⊢  t : A \\ \text {$π$ fresh for $Γ$}}
    {Γ ⊢ λπ. t : ∀π. A}\text{w.abs}

    \inferrule{Γ ⊢ t :  ∀π. A}
    {Γ ⊢ t p  :  A[p/π]}\text{w.app}
  \end{mathpar}

  \caption{Typing rules}
  \label{fig:typing}
\end{figure}

\improvement{explain that the $ωΓ$ in the
  constructor rule is there for constant constructors.}

We are now ready to understand the typing rules of
\fref{fig:typing}. Remember that the typing judgement \(Γ ⊢ t : A\)
reads as: the term $t$ consumes $Γ$ and builds an $A$ with
multiplicity $1$.  This is the only kind of judgement in \calc{}:
there is no direct way to express ``the term $t$ consumes $Γ$ and
builds an $A$ with multiplicity $p$''. Instead, we make use of context
scaling: if \(Γ ⊢ t : A\) holds, then from consuming \(pΓ\) with the
same term $t$, one builds an $A$ with multiplicity $p$. This idea is
at play in the application rule:
$$\apprule$$
Here, $t$ requires its argument $u$ to have multiplicity $q$. Thus
$Δ ⊢ u : A$ give us $u$ with a multiplicity of $1$, and therefore the
application needs $qΔ$ to have a multiplicity $q$ of $u$ at its
disposal. Thus all variables in the scope of the applications are
accounted for, with appropriate multiplicities.

Scaling the context in the application rule is the technical device
which makes the promotion of linear data to unrestricted data implicit,
hence making the intuitionistic $λ$-calculus is a subset of
\calc{}. Specifically the subset where all variables are annotated
with the multiplicity $ω$:
$$
\inferrule
{\inferrule
  {\inferrule
    {\inferrule{ }{x :_ω A ⊢ x : A}\text{var} \qquad \inferrule{ }{x :_ω A ⊢ x : A}\text{var}}
    {x :_ω A ⊢ Tensor x x : Tensor A A}\text{con}}
  {⊢ λ (x :_ω A). Tensor x x : A →_ω Tensor A A}\text{abs} \qquad \inferrule{\vdots}{⊢ id_ω 42 : A}}
{()+ω() ⊢ (λ (x :_ω A). Tensor x x)_ω \; (id_ω \; 42)}\text{app}
$$
This latter fact is, in turn, why \HaskeLL{} is a conservative extension of Haskell
(provided unannotated variables are understood
to have multiplicity $ω$).

The variable rule, used in the above example, may require some
clarification.
$$\varrule$$
The variable rule is the rule which implements the weakening of
$ω$-multiplicated variables: that is, it allows ignoring variables of multiplicity
$ω$. \footnote{Pushing weakening to
the variable rule is classic in many lambda calculi, and in the case
of linear logic, dates back at least to Andreoli's work on
focusing~\cite{andreoli_logic_1992}.} Note that the judgement
$x :_ω A ⊢ x : A$ is an instance of the variable rule, because
$(x :_ω A)+(x :_1 A) = x:_ω A$.

Most of the other typing rules are straightforward, but let us linger
for a moment on the case rule:
$$\caserule$$
Like the application rule it is parametrized by a multiplicity
$p$. But, while in the application rule only the argument is affected
by $p$, in the case rule, not only the scrutinee but also the variable
bindings in the branches are affected by $p$. What it means,
concretely, is that the multiplicity of data is \emph{inherited} by
its sub-data: if we have an $A⊗B$ with multiplicity $1$, then we have
an $A$ with multiplicity $1$ and a $B$ with multiplicity $1$, and if
we have an $A⊗B$ with multiplicity $ω$ then we have an $A$ with
multiplicity $ω$ and a of $B$ with multiplicity $ω$. Therefore, the
following program, which asserts the existence of projections, is
well-typed (note that, both in |first| and |snd|, the arrow is~---~and
must be~---~unrestricted)
\begin{code}
  data (⊗) a b where
    (,) : a ⊸ b ⊸ a⊗b

  first  :: a⊗b → a
  first (a,b)  = a

  snd  :: a⊗b → b
  snd (a,b)  = b
\end{code}

\unsure{Shall we state that our type-system is decidable? It may not
  be completely obvious that the problem of equality in a ring is
  decidable.}

\section{\calc{} dynamics}
\label{sec:dynamics}

We wish to give a dynamic semantics for \calc{} which accounts for the
explicit allocations and de-allocations as seen in the queue
example. To that effect we follow \citet{launchbury_natural_1993} who
defines a semantics for lazy computation.

\citeauthor{launchbury_natural_1993}'s semantics is a big-step
semantics where variables play the role of pointers to the heap (hence
represent sharing, which is the cornerstone of a lazy semantics). We
augment that semantics with a foreign heap and queue
primitives. Concretely, bindings in the heap are of the form $x↦_p e$
where $p∈\{1,ω\}$ a multiplicity: bindings with multiplicity $ω$
represent objects on the regular, garbage-collected, heap, while
bindings with multiplicity $1$ represent objects on a foreign heap,
which we call the \emph{linear heap}. Queues and messages are
represented as literals\footnote{As such, queues will seem to be
  copied on the stack, but it is just an artifact of the particular
  presentation: it does not have a syntax for returning ``pointers''.}
manipulated by the primitives. For the sake of simplicity of
presentation, we will only show one primitive (\emph{push}) beyond
allocation and de-allocation.


Concretely, we show that it is possible to allocate linear objects on
a heap which is not managed by the garbage collector, and
correspondingly deallocate them upon (lazy) evaluation. To do so we
present an extension of the semantics of
\citet{launchbury_natural_1993} to \calc{}. Such a semantics is
actually \emph{more precise} than what we intend to implement: it
serves as a technical device to justify the less intrusive semantics
that we describe in \fref{sec:eras-dynam-weight}, and requires no
modification to GHC (beyond type-checking, of course).

\citet{launchbury_natural_1993}'s semantics relies on a constrained
$λ$-calculus syntax which we remind in \fref{fig:launchbury:syntax}, and
extend \citet{launchbury_natural_1993}'s original syntax with
\begin{description}
\item[Message literals] We assume a collection of message literals
  written $m_i$. We assume that the programmer can type such literals
  in the program. They are not given more semantics than their
  interaction with lists.
\item[Queue literals] Queues are a kind of primitive data
  manipulated by primitive operations. As such the structure of queue
  is invisible to the constructs of \calc{}, therefore queues are
  represented a literals. Contrary to message literals, we assume that
  the programmer \emph{cannot} type such literals: they are created by
  primitive operations. Therefore queue literals will only be found in
  the heap (specifically: on the linear heap).\improvement{describe
    notation for queue literals}
\item[Primitives] $alloc$, $free$ and $push$ responsible respectively for allocating a
  queue, freeing a queue, and pushing a message to a queue.
\end{description}

\begin{figure}

  \figuresection{Syntax of the runtime language}
  \begin{align*}
    r &::=\\
      &||  x\\
      &||  λx. r\\
      &||  r x\\
      &||  λπ. r\\
      &||  r p\\
      &||  c x₁ … x_n\\
      &||  \case[q] r {c_k  x₁ … x_{n_k} → r_k}\\
      &||  \flet x_1 =_{q₁} r₁ … x_n =_{q_n} r_n \fin r\\
      &||  m_i\\
      &||  alloc k\\
      &||  push y z\\
      &||  free x
  \end{align*}

  \figuresection{Translation of typed terms}
  \begin{align*}
    (λ(x:_qA). t)^* &= λx. (t)^* \\
    x^*             &= x \\
    (t_q  x )^*     &= (t)^*  x \\
    (t_q  u )^*     &= \flet y =_{q} (u)^* \fin (t)^*  y \\
    c_k  t₁ … t_n   &= \flet x₁ =_{q_1} (t₁)^*,…, x_n =_{q_n} (t_n)^*
                      \fin c_k x₁ … x_n
  \end{align*}
  \begin{align*}
    (\case[p] t {c_k  x₁ … x_{n_k} → u_k})^* &= \case[p] {(t)^*} {c_k  x₁ … x_{n_k} → (u_k)^*} \\
    (\flet x_1:_{q₁}A_1= t₁  …  x_n :_{q_n}A_n = t_n \fin u)^* & = \flet x₁ =_{q₁} (t₁)^*,…, x_n=_{q_n} (t_n)^* \fin (u)^*
  \end{align*}

  \caption{Syntax for the Launchbury-style semantics}
  \label{fig:launchbury:syntax}
\end{figure}
\improvement{[aspiwack] The multiplicity rules are here only for
  compatibility with the strong typed semantics. They are a bit in the
  way, really: for the standard dynamics we might as well erase all
  the multiplicity, but I think this would end up making the presentation
  heavier. Either we should say a word about multiplicity rules in
  this paragraph, or we could simply note that all the weight can be
  resolved statically (I believe that to be true, we should check) and
  omit the rules.}
The dynamic semantics is given in \ref{fig:dynamics}. Let us review
the new rules
\begin{description}
\item[Linear variable] In the linear variable rule, the binding in the
  linear heap is removed. While this can be exploited to signify
  explicit de-allocation of objects on the linear heap. However, the
  linear variable rule is best seen as a technical device to represent
  the strictness of the queue primitives: the queue literal will then
  be passed to a primitive, either \emph{free} to actually free the
  queue, or \emph{push} to augment the queue with a message.
\item[Alloc] The alloc rule creates a new (empty) queue and pass it to
  its continuation. It is not the only rule which allocate in the
  sense of using a |malloc|-like primitive: pushing a message to a
  queue may require allocation to accommodate for the extra
  element. However its role is to allocate a root that will own a
  queue.
\item[Free] In combination with the linear variable rule, deallocates
  a queue.
\item[Push] The push rule adds a message to a queue. Notice that the
  message itself is incorporated into the queue literal: there is no
  mention of a variable pointing to the message. This is because the
  message is copied from the garbage-collected heap to the linear
  heap.
\end{description}

\begin{figure}
  \begin{mathpar}
    \inferrule{ }{Γ : λπ. t ⇓ Γ : λπ. t}\text{w.abs}


    \inferrule{Γ : e ⇓ Δ : λπ.e' \\ Δ : e'[q/π] ⇓ Θ : z} {Γ :
      e q ⇓_ρ Θ : z} \text{w.app}

    \inferrule{ }{Γ : λx. e ⇓ Γ : λx. e}\text{abs}


    \inferrule{Γ : e ⇓ Δ : λy.e' \\ Δ : e'[x/y] ⇓ Θ : z} {Γ :
      e x ⇓ Θ : z} \text{application}

    \inferrule{Γ : e ⇓ Δ : z}{(Γ,x ↦_ω e) : x ⇓ (Δ;x ↦_ω z) :
      z}\text{shared variable}


    \inferrule{Γ : e ⇓ Δ : z} {(Γ,x ↦_1 e) : x ⇓ Δ :
      z}\text{linear variable}


    \inferrule{(Γ,x_1 ↦_ω e_1,…,x_n ↦_ω e_n) : e ⇓ Δ : z}
    {Γ : \flet x₁ =_{q₁} e₁ … x_n =_{q_n} e_n \fin e ⇓ Δ :
      z}\text{let}

    \inferrule{ }{Γ : c  x₁ … x_n ⇓ Γ : c  x₁ …
      x_n}\text{constructor}


    \inferrule{Γ: e ⇓ Δ : c_k  x₁ … x_n \\ Δ : e_k[x_i/y_i] ⇓ Θ : z}
    {Γ : \case[q] e {c_k  y₁ … y_n ↦ e_k } ⇓ Θ : z}\text{case}

    \inferrule{Γ,x ↦_1 ⟨⟩ : k x ⇓ Δ : z }{Γ: alloc k ⇓ Δ : z }\text{alloc}

    \inferrule{Γ:y ⇓ Δ:⟨…⟩ \\ Δ:w ⇓ Θ:m_i}{Γ : push y w⇓ Θ : ⟨m_i,…⟩}\text{push}

    \inferrule{Γ:x ⇓ Δ:⟨…⟩ }{Γ : free x ⇓ Δ : () }\text{free}

  \end{mathpar}

  \caption{Dynamic semantics}
  \label{fig:dynamics}
\end{figure}

While the semantics of \fref{fig:dynamics} describes quite closely
what is implemented in the \textsc{ghc} extension prototype, it is not
convenient for proving properties. There are two reasons to that fact:
first the semantics is rather disjoint from the type system and, also,
there are pointers from the garbage-collected heap to the linear
heap. The latter property will happen, for instance, if the programmer
needs a pair of queue: the pair will be allocated on the
garbage-collected heap while the queues will live in the linear heap.

This is not a problem in and on itself: pointers to queue may be seen
as opaque by the garbage collector which will not collect them, so
that their lifetime is still managed explicitly by the
programmer. However, in order to prevent use-after-free bug, we must
be sure that by the time a queue is freed, every object in the
garbage-collected heap which points to that queue must be dead, even
if they are still extant in the heap.

In order to prove such a property, let us introduce a stronger
semantics with the lifetime of objects more closely tracked. The
strengthened semantics differs from \fref{fig:dynamics} in two
aspects: the evaluation states are typed, and values with statically
tracked lifetimes (linear values) are put on the linear
heap.\improvement{Remark: the annotation on the untyped semantics is
  useless. We have two choices: either we decide to remove annotations
  from the untyped semantics altogether, or we keep all the type
  annotations (not just multiplicity) and ignore them in the untyped
  semantics, but we can unify the typed and untyped semantics}

In order to define the typed semantics, we shall introduce a few
notations. First we will need a notion of product annotated with the
multiplicity of its first component.
\begin{definition}[Weighted tensors]

  We use $A {}_ρ⊗ B$ ($ρ∈\{1,ω\}$) to denote one of the two following
  types:
  \begin{itemize}
  \item $\data A~{}_1\!⊗ B = ({}_1\!,) : A ⊸ B ⊸ A~{}_1\!⊗ B$
  \item $\data A~{}_ω\!⊗ B = ({}_ω\!,) : A → B ⊸ A~{}_1\!⊗ B$
  \end{itemize}

\end{definition}
Weighted tensors are used to internalise a notion of stack that keeps
tracks of multiplicity for the sake of the following definition, which
introduces the states of the strengthened evaluation relation.

\newcommand{\termsOf}[1]{\mathnormal{terms}(#1)}
\newcommand{\multiplicatedTypes}[1]{\mathnormal{multiplicatedTypes}(#1)}

\begin{definition}[Annotated state \& well-typed state]
  An annotated state is a tuple $Ξ ⊢ (Γ||t :_ρ A),Σ$ where
  \begin{itemize}
  \item $Ξ$ is a typing context
  \item $Γ$ is a \emph{typed heap}, \emph{i.e.} a collection of
    bindings of the form $x :_ρ A = e$
  \item $t$ is a term
  \item $ρ∈\{0,1\}$ is a multiplicity
  \item $A$ is a type
  \item $Σ$ is a typed stack, \emph{i.e.} a list of triple $e:_ω A$ of
    a term, a multiplicity and an annotation.
  \end{itemize}

  We say that such an annotated state is well-typed if the following
  typing judgement holds:
  $$
  Ξ ⊢ \flet Γ \fin (t,\termsOf{Σ}) : (A{}_ρ\!⊗\multiplicatedTypes{Σ})‌
  $$
  Where $\flet Γ \fin e$ stands for the grafting of $Γ$ as a block of
  bindings, $\termsOf{e_1 :_{ρ_1} A_1, … , e_n :_{ρ_n} A_n}$
  for $(e_1 {}_{ρ_1}\!, (…, (e_n{}_{ρ_n},())))$, and
  $\multiplicatedTypes{e_1 :_{ρ_1} A_1, … , e_n :_{ρ_n} A_n}$ for
  $A_1{}_{ρ_1}\!⊗(…(A_n{}_{ρ_n}\!⊗()))$.
\end{definition}

\begin{definition}[Strengthened reduction relation]
  We define the strengthened reduction relation, also written $⇓$, as a
  relation on annotated state. Because $Ξ$, $ρ$, $A$ and $Σ$ will
  always be the same for related states, we abbreviate
  $$
  (Ξ ⊢ Γ||t :_ρ A,Σ) ⇓ (Ξ ⊢ Δ||z :_ρ A,Σ)
  $$
  as
  $$
  Ξ ⊢ (Γ||t ⇓ Δ||z) :_ρ A, Σ
  $$

  The strengthened reduction relation is defined inductively by the
  rules of \fref{fig:typed-semop}.
\end{definition}
\todo{missing abs rule in well-typed reduction}
\todo{replace case-bang with alloc/free/push}
\begin{figure}
\begin{mathpar}
\inferrule
    {Ξ  ⊢  (Γ||e      ⇓ Δ||λ(y:_q A).u):_ρ A →_q B, x:_{qρ} A, Σ \\
     Ξ  ⊢  (Δ||u[x/y] ⇓ Θ||z)   :_ρ       B,            Σ}
    {Ξ  ⊢  (Γ||e_q x ⇓ Θ||z) :_ρ B ,Σ}
{\text{app}}

\inferrule
  {Ξ, x:_ωB ⊢ (Γ||e ⇓ Δ||z) :_ρ A, Σ}
  {Ξ ⊢ (Γ,x :_ω B = e || x  ⇓ Δ, x :_ω B = z || z) :_ρ A, Σ}
{\text{shared variable}}

\inferrule
  {Ξ ⊢ (Γ||e ⇓ Δ||z) :_1 A, Σ}
  {Ξ ⊢ (Γ,x :_1 B = e|| x  ⇓  Δ||z) :_1 A,  Σ}
{\text{linear variable}}

\inferrule
  {Ξ ⊢ (Γ,       x_1 :_{ρq_1} A_1 = e_1 … x_n :_{pq_n} A_n = e_n  ||  t ⇓ Δ||z) :_ρ C, Σ}
  {Ξ ⊢ (Γ||\flet x_1 :_{q_1}  A_1 = e_1 … x_n :_{q_n} A_n = e_n \fin t ⇓ Δ||z) :_ρ C, Σ}
{\text{let}}

\inferrule
  { }
  {Ξ ⊢ (Γ || c x_1…x_n  ⇓ Γ || c x_1…x_n) :_ρ A, Σ}
{\text{constructor}}

\inferrule
  {Ξ,y_1:_{p_1qρ} A_1 … ,y_n:_{p_nqρ} A_n ⊢ (Γ||e ⇓ Δ||c_k x_1…x_n) :_{qρ} D, u_k:_ρ C, Σ \\
    Ξ ⊢ (Δ||u_k[x_i/y_i] ⇓ Θ||z) :_ρ C, Σ}
  {Ξ ⊢ (Γ||\case[q] e {c_k y_1…y_n ↦ u_k} ⇓ Θ||z) :_ρ C, Σ}
{\text{case}}

\inferrule
   {Ξ,y:_ω A ⊢ (Γ||e ⇓ Δ||\varid{Bang}  x) :_1 \varid{Bang} A, u:_ω C, Σ \\
    Ξ ⊢ (Δ||u[x/y] ⇓ Θ||z) :_ω C, Σ}
   {Ξ ⊢ (Γ||\mathsf{case}_{1} e \{\varid{Bang}  y ↦ u\} ⇓ Θ||z) :_ω C, Σ}
{\text{case-bang}}
  \end{mathpar}
  \caption{Typed operational semantics. (Omitting the obvious abs, w.abs and w.app for concision)}
  \label{fig:typed-semop}
\end{figure}

There are a few things of notice about the semantics of
\fref{fig:typed-semop}. First, the let rule doesn't necessarily
allocate in the garbage collected heap anymore — this was the goal of
the strengthened semantics to begin with — but nor does it
systematically allocate bindings of the form $x :_1 A = e$ in the
linear heap either: the heap depends on the multiplicity $ρ$. The
reason for this behaviour is promotion: an ostensibly linear value can
be used in an unrestricted context. In this case the ownership of $x$
must be given to the garbage collector: there is no static knowledge
of $x$'s lifetime. For the same reason, the linear variable case
requires $ρ$ to be $1$ (Corollary~\ref{cor:linear-variable} will prove
this restriction to be safe).

The other important rule is the alloc rule: it requires a result of
the form $Bang x$ of multiplicity $1$ while returning a
result of multiplicity $ω$. It is crucial as the alloc rule is the
only rule which make possible the use of a linear value to produce a
garbage collected value, this will justify the fact that in the ordinary
semantics, queues can be allocated in the linear heap. The reason why
it is possible is that, by definition, in $Bang x$, $x$ \emph{must} be
in the garbage-collected heap. In other words, when an expression $e :
Bang A$ is forced to the form $Bang x$, it will have consumed all the
pointers to the linear heap (the correctness of this argument is
proved in Lemma~\ref{lem:type-safety} below).

The crucial safety property of the strengthened relation is that it
preserves well-typing of states.

\begin{lemma}[Strengthened reduction preserves typing]\label{lem:type-safety}
  If  $Ξ ⊢ (Γ||t ⇓ Δ||z) :_ρ A, Σ$, then
  $$
  Ξ ⊢ (Γ||t :_ρ A),Σ \text{\quad{}implies\quad{}} Ξ ⊢ (Δ||z :_ρ A),Σ.
  $$
\end{lemma}
\begin{proof}
  By induction on the typed-reduction.

  \todo{There used to be the case of the case-bang in more details,
    probably do alloc instead}
  % The important case is the case-bang rule. By induction we have that
  % $Ξ,y:_ω⊢(Δ||Bang x) :_1 Bang A,…$. Unfolding the typing rule for
  % $Bang$, we have that $Δ=ωΔ'$ for some $Δ'$. Which is sufficient to
  % prove that $Ξ⊢(Δ||u[x/y]) :_ω C , Σ$.
\end{proof}

Because of this property we can freely consider the restriction of the
strengthened relation to well-typed states. For this reason, from now
on, we only consider well-typed states.

\begin{corollary}[Never stuck on the linear variable rule]\label{cor:linear-variable}
  $Ξ ⊢ (Γ,x:_1A=e ||x) :_ωB , Σ$ is not reachable.
\end{corollary}
\begin{proof}
  Remember that we consider only well-typed states because of
  Lemma~\ref{lem:type-safety}. Unfolding the typing rules it is easy
  to see that $Ξ ⊢ (Γ,x:_1A=e ||x) :_ωB , Σ$ is not well-typed: it
  would require $x:_1 A = ωΔ$ for some $Δ$, which cannot be.
\end{proof}

We are now ready to prove properties of the ordinary semantics by
transfer of properties of the strengthened semantics. Let us start by
defining a notion of type assignment for states of the ordinary
semantics.

\newcommand{\ta}[2]{γ(#1)(#2)}

\begin{definition}[Type assignment]
  A well-typed state is said to be a type assignment for an ordinary
  state, written $\ta{Γ:e}{Ξ ⊢ Γ' || e' :_ρ A , Σ}$, if
  $e=e' ∧ Γ' \leqslant Γ$.

  That is, $Γ'$ is allowed to strengthen some $ω$ bindings to be
  linear, and to drop unnecessary $ω$ bindings.
\end{definition}

Notice that for a closed term, type assigment reduces to the fact that
$e$ has a type. So we can see type assignment to state as a
generalisation of type assignment to terms which is preserved during
the reduction. Let us turn to prove that fact, noticing that type
assignment defines a relation between ordinary states and well-typed
states.

\begin{lemma}[Type safety]\label{lem:actual_type_safety}
  The refinement relation defines a simulation of the ordinary
  reduction by the strengthened reduction.

  That is for all $\ta{Γ:e}{Ξ ⊢ (Γ'||e) :_ρ A,Σ}$ such that $Γ:e⇓Δ:z$,
  there exists a well-typed state $Ξ ⊢ (Δ'||z) :_ρ A,Σ$ such that
  $Ξ ⊢ (Γ||t ⇓ Δ||z) :_ρ A, Σ$ and $\ta{Δ:z}{Ξ ⊢ (Δ'||z) :_ρ A,Σ}$.
\end{lemma}
\begin{proof}
  This is proved by a straightforward induction over the ordinary
  reduction. The case of let may be worth considering for the curious
  reader.
\end{proof}

From type-safety follows the fact that a completely evaluated program
has necessarily de-allocated all the linear heap. This is a form of
safety from resource leaks (of course, resource leaks can always be
programmed in, but the language itself does not leak resources).

\begin{corollary}[Eventual de-allocation of linear values]
  Let $⊢ t : ()$ be a closed term, where $\data () = ()$ is the data
  declaration with a single constructor. If $:t ⇓ Δ:()$, then $Δ$ only
  contains $ω$-bindings.
\end{corollary}
\begin{proof}
  By Lemma \ref{lem:actual_type_safety}, % TODO fref?
  we have $⊢ (Δ||() :_ρ ()), ⋅ $. Then the typing rules of $\flet$ and
  $()$ conclude: in order for $()$ to be well typed, the environment
  introduced by $\flet Δ$ must be of the form $ωΔ'$.
\end{proof}

For the absence of use-after-free errors, let us invoke a liveness
property: that the type assignment is also a simulation of the
strengthened semantics by the ordinary semantics (making type
assignment a bisimulation). There is not a complete notion of progress
which follows from this as big step semantics such as ours do not
distinguish blocking from looping: we favoured clarity of exposition
over a completely formal argument for progress.

\begin{lemma}[Liveness]\label{lem:liveness}
  The refinement relation defines a simulation of the strengthened
  reduction by the ordinary reduction.

  That is for all $\ta{Γ:e}{Ξ ⊢ (Γ'||e) :_ρ A,Σ}$ such that
  $\ta{Δ:z}{Ξ ⊢ (Δ'||z) :_ρ A,Σ}$, there exists a state $Δ:z$ such
  that $Γ:e⇓Δ:z$ and $\ta{Δ:z}{Ξ ⊢ (Δ'||z) :_ρ A,Σ}$.
\end{lemma}
\begin{proof}
  This is proved by a straightforward induction over the ordinary
  reduction.
\end{proof}

In conjunction with Corollary~\ref{cor:linear-variable},
Lemma~\ref{lem:liveness} shows that well-typed program don't get
blocked, in particular that garbage-collected objects which point to the
linear objects are not dereferenced after the linear object has been
freed: \calc{} is safe from use-after-free errors.

\section{Perspectives}
\todo{Speak about fusion}
\hfill
\todo{Mention the case-bang rule (the case-bang rule can be found in
  the source below this todo-box)}
\providecommand\casebangrule{\inferrule{Γ: t ⇓_{q} Δ : \varid{Bang} x
    \\ Δ : u[x/y] ⇓_ρ Θ : z} {Γ :
    \mathsf{case}_{q} t \mathsf{of} \{\varid{Bang} y ↦ u\} ⇓_ρ Θ :
    z}\text{case-bang}}

\section{Related work}

\subsection{Uniqueness types}

\todo{Compare with uniqueness types}

\subsection{Linearity as a property of types vs. a property of bindings}

In several presentations \cite{wadler_linear_1990,mazurak_lightweight_2010,morris_best_2016}
programming languages incorporate
linearity by dividing types into two kinds. A type is either linear
or unrestricted. Unrestricted types typically includes primitive types
(such as \varid{Int}), and all (strictly positive) data types. Linear types
typically include resources, effects, etc.

A characteristic of such a presentation is that linearity ``infects''
every type containing a linear type. Consequently, if we want to make
a pair of (say) an integer and an effect, the resulting type must be
linear.  This property means that polymorphic data structures can no
longer be used \emph{as is} to store linear values. Technically, one cannot unify a
type variable of unrestricted kind to a linear type. One can escape
the issue by having polymorphism over kinds; unfortunately to get
principal types one must then have subtyping between kinds and bounded
polymorphism, as \citet{morris_best_2016}.

In contrast, in \calc{} we have automatic scaling of linear types to
unrestricted ones in unrestricted contexts. This feature already
partially addresses the problem of explosion of types.  First, most
data structures should have linear constructors and thus readily store
linear values. Second, first order functions can be given a linear
type and be scaled automatically. Finally, even in the most general
case, when multiplicity polymorphism is needed, we get away without
using bounded quantification: products in weight expressions is all we
need.

Another issue with the ``linearity in types'' presentation is that it
is awkward at addressing the problem of ``simplified memory
management'' that we aim to tackle. As we have seen, the ability to
use an intermediate linear heap rests on the ability to turn a linear
value into an unrestricted one. When linearity is captured in types,
we must have two versions of every type that we intend to move between
the heaps. Even though \citet{morris_best_2016} manages to largely
address the issue by means of polymorphism and constraints over types,
it comes as the cost of a type-system vastly more complex than the one
we present here.

\subsection{Alms}
\improvement{Citation pointing to \emph{e.g.} \url{http://users.eecs.northwestern.edu/~jesse/pubs/alms/} (And rewrite this paragraph which contains a copy-paste of the paper's abstract.)}
Alms is a general-purpose programming language that supports
practical affine types. To offer the expressiveness of Girard’s linear
logic while keeping the type system light and convenient, Alms
uses expressive kinds that minimize notation while maximizing
polymorphism between affine and unlimited types.

We have the same aim (but with plain linear types) but use a different
technique which cuts down the number of inference rules from 51 to 8.

A key feature of Alms is the ability to introduce abstract affine
types via ML-style signature ascription. In Alms, an interface can
impose stiffer resource usage restrictions than the principal usage
restrictions of its implementation. This form of sealing allows the
type system to naturally and directly express a variety of resource
management protocols from special-purpose type systems.

We can do similar examples as the demos of Alms. Example, R-W Lock:
\begin{code}
acquireRead : Lock -> (Access Shared ⊸ Bang a) ⊸ a
acquireWrite : Lock -> (Access Excl ⊸ Bang a) ⊸ a
releaseAccess : Access a ⊸ ()

set : Key ⊸ Value ⊸ Access Excl ⊸ (Access Excl)
get : Key ⊸ Access a ⊸ (Value ⊗ Access a)
\end{code}

We extend Haskell, they do not claim to be an extension of ML.

This is what Morris says about Alms:
Despite the (not insignificant) complexity of their system, it is
still not clear that it fully supports the expressiveness of
traditional functional programming languages. For example, their
system has distinct composition operators with distinct types. These
types are not related by the subtyping relation, as subtyping is
contravariant in function arguments.

\subsection{Related type systems}

The type system presented here is heavily inspired from the work of
\citet{ghica_bounded_2014} and \citet{mcbride_rig_2016}. Both of them
present a type system where arrows are annotated with the multiplicty
of the the argument that they require, and where the multiplicities
form a semi-ring.  The novel technical aspects of the present system are
multiplicity polymorphism and an lazy operational semantics.

Contrary to us \citeauthor{mcbride_rig_2016} has a weighted type
judgement $Γ ⊢_ρ t : A$. In the application rule, the weight is
multiplied by the weight of the function in the argument. At the point
of variable usage one checks that the appropriate multiplicity of the
variable is available. A problem with this approach is that whenever
one enters an $ω$-weighted judgement, one effectively abandons
tracking any linearity whatsoever. Thus, the following program would
be type-correct, while |dup| is duplicating a linear value.

\[
(λ (dup : _ ω a ⊸ (a ⊗ a) ) . dup) (λx. (x,x))
\]

Effectively, in \citeauthor{mcbride_rig_2016}'s system, one cannot use
abstractions while retaining the linearity property.

In that respect, our system is closer to that of
\citet{ghica_bounded_2014}, which does not exhibit the issue. The
differences between our type system and that of
\citet{ghica_bounded_2014} are that we work with a concrete set of
weights and that we support a special case-analysis construction which
works only for non-zero weights.



\subsection{Operational aspects of linear languages}

Recent literature is surprisingly quiet on the operational aspect of
linear types, and concentrates rather on uniqueness types
\cite{pottier_programming_2013,matsakis_rust_2014}.

Looking further back, \citet{wakeling_linearity_1991} produced a
complete implementation of a language with linear types, with the goal
of improving the performance. Their implementation features a separate
linear heap (as we do in \fref{sec:dynamics}). However, they did not manage to
obtain consistent performance gains. However, they still manage to
reduce \textsc{gc} usage, which may be critical in distributed and
real-time environments, as we explained in the introduction\unsure{did we?}.
Thus the trade-off is beneficial is certain situations.

Regarding absolute performance increase,
\citeauthor{wakeling_linearity_1991} propose not attempt prompt free
of thunks, and instead take advantage of linear arrays. \todo{Run concrete examples and see what we get.}

% \item Linear Lisp. \cite{baker_lively_1992}: unclear results

% \item LineralML \url{https://github.com/pikatchu/LinearML/}: no pub?

\section{Conclusion}\todo{Fix section references}

This paper demonstrates how an existing lazy language, such
as Haskell, can be extended with linear types, without compromising
the language, in the following sense:
\begin{itemize}
\item Existing programs are valid in the extended language
  \emph{without modification}.
\item Such programs retain the same semantics.
\item Furthermore, the performance of existing programs is not affected.
\end{itemize}
In other words: regular Haskell comes first. Additionally, first-order linearly
typed functions and data structures are usable directly from regular
Haskell code. In such a situation their semantics is that of the same
code with linearity erased.

Furthermore \calc{} has a particularly non-invasive design, and thus
it is possible to integrate with an existing complex system.  In
particular 1. it has no system of ``kinds'' of its own, so it it is
compatible with any system of ``kinds'' (including dependently-typed
ones) and 2. \calc{} does not use subtyping. Consequently one can
confidently extend existing Haskell implementations linear types by
following the design presented in this paper. Indeed, we have a
constructed a prototype of GHC whose type-checker is extended with
linear types.


Our proposal is in stark contrast with languages such as Rust, which are
specifically optimized for writing programs that are structured using
the RAII
pattern\footnote{\url{https://en.wikipedia.org/wiki/Resource_acquisition_is_initialization}}
(where resource lifetimes are tied directly or indirectly to stack
allocated objects that are freed when the control flow exits the
current lexical scope). Ordinary functional programs seldom fit this
particular resource acquisition pattern so end up being second class
citizens.

In \HaskeLL{}, when the programmer is ready to pay the
cost of finely dealing with usage through linearity, they get the
additional benefits of linear type: new abstractions
(\fref{sec:protocols}, \fref{sec:resources}, and \fref{sec:ffi}),
lower \textsc{gc} pressure (\fref{sec:primops}).
All these benefits come to with no penalty to unmodified Haskell.

The benefits can be classified in three stages depending on how much
modification to an existing language they require:
\begin{enumerate}
\item Adapting the \textbf{type system} enables
  \begin{itemize}
  \item new abstractions such as protocols (\fref{sec:protocols}) and
    safe resource management (\fref{sec:resources}), enabling {\em
      safe} API to resources exposed as foreign resources allocated in
    a foreign heap
  \item pure abstractions to C libraries (\fref{sec:ffi})
  \item primitive operations to keep data out of the garbage collector
    (\fref{sec:primops})
  \end{itemize}
\item Propagating type annotation to the \textbf{intermediate
    language} makes it possible to exploit linear types for further
  optimization (\fref{sec:fusion})
\item Modifying the \textbf{run-time system} further enables prompt
  deallocation of it possible to
  have type-directed allocation of objects,  which can be leveraged to prevent \textsc{gc} pauses
  in critical computations (\fref{sec:dynamics}). An API for explicit
  allocation and freeing of resources is no longer needed.
\end{enumerate}

Each of these stages imply increasingly invasive changes to a
compiler, but also increasingly large benefits. In practice it makes
it possible to roll out stages one at a time, quickly reaping the low
hanging fruits.  Of these three stages, modifying the type system is
the cheapest, but also the most immediately beneficial, enabling a lot
of new uses for the programming language. Propagating the information
down to the run-time system is still worth pursuing as we are
expecting significant benefits, due to reduced and controlled latency,
for systems programming, and in particular for distributed
applications.

\bibliography{../PaperTools/bibtex/jp.bib,../local.bib}{}
\bibliographystyle{ACM-Reference-Format.bst}

\end{document}

%  LocalWords:  FHPC Lippmeier al honda pq th FFI monadic runLowLevel
%  LocalWords:  forkIO initialContext runtime doneWithContext Primops
%  LocalWords:  deallocation Launchbury launchbury GC scrutinee dup
%  LocalWords:  centric polymorphism modality intuitionistic typable
%  LocalWords:  compositional Andreoli's openfile myfile ReadMore ys
%  LocalWords:  hClose xs GC'ed deallocated linearities mcbride snd
%  LocalWords:  unboxed Haskellian APIs newByteArray MutableByteArray
%  LocalWords:  updateByteArray freeByteArray indexMutByteArray et ss
%  LocalWords:  freezeByteArray ByteArray indexByteArray Unfused srcs
%  LocalWords:  evaluator lippmeier functionals copySetP FilePath sk
%  LocalWords:  dsts sourceFs sinkFs drainP expensiveComputation WHNF
%  LocalWords:  duplications bernardy deallocate morris latencies gc
%  LocalWords:  doSomethingWithLinearHeap untyped boolean withFile ap
%  LocalWords:  forall aspiwack dually involutive runComputation lmb
%  LocalWords:  withNewByteArray expensiveFunction affine booleans zs
%  LocalWords:  Kleisli ghica wakeling TODOs Haskell subtype IOClient
%  LocalWords:  OpenFile IOServer shareable openFile monads withAHeap
%  LocalWords:  splitByteArray withLinearHeap weightedTypes foldArray
%  LocalWords:  optimizations denotational withNewArray updateArray
%  LocalWords:  splitArray arraySize Storable byteArraySize natively
%  LocalWords:  unannotated tuple
