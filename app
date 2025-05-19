// File: app/layout.tsx
import "../styles/globals.css";
import { ReactNode } from 'react';

export default function RootLayout({ children }: { children: ReactNode }) {
  return (
    <html lang="nl">
      <body>{children}</body>
    </html>
  );
}

// File: app/page.tsx (Homepage)
import Head from 'next/head';
import Link from 'next/link';

export default function Home() {
  return (
    <>
      <Head>
        <title>Bookkpr - Your Smart Bookkeeping Assistant</title>
        <meta name="description" content="Bookkpr simplifies invoicing, receipts, taxes & inventory for freelancers." />
      </Head>
      <header className="p-8 bg-white shadow-md">
        <nav className="max-w-5xl mx-auto flex justify-between items-center">
          <h1 className="text-2xl font-bold">Bookkpr</h1>
          <div className="space-x-6">
            <Link href="/">Home</Link>
            <Link href="/features">Features</Link>
            <Link href="/pricing">Pricing</Link>
            <Link href="/faq">FAQ</Link>
            <Link href="/contact">Contact</Link>
            <Link href="/login" className="font-medium text-blue-600 hover:text-blue-800">Login</Link>
          </div>
        </nav>
      </header>
      <main className="max-w-5xl mx-auto p-8">
        <section className="text-center py-16">
          <h2 className="text-4xl font-extrabold mb-4">Welkom bij Bookkpr</h2>
          <p className="text-lg mb-6">Jouw slimme assistent voor facturatie, bonnetjes en btw.</p>
          <Link href="/signup" className="px-6 py-3 bg-blue-600 text-white rounded-full hover:bg-blue-700">Start je gratis proef</Link>
        </section>
        <section className="grid grid-cols-1 md:grid-cols-3 gap-8 py-16">
          <div className="p-6 bg-gray-50 rounded-lg shadow-sm">
            <h3 className="text-xl font-semibold mb-2">Automatische facturen</h3>
            <p>Maak en verstuur facturen in seconden, met Tap-to-Pay of QR.</p>
          </div>
          <div className="p-6 bg-gray-50 rounded-lg shadow-sm">
            <h3 className="text-xl font-semibold mb-2">Bonnetjesscanner</h3>
            <p>Scan bonnetjes via camera of e-mail, inclusief OCR-tekstherkenning.</p>
          </div>
          <div className="p-6 bg-gray-50 rounded-lg shadow-sm">
            <h3 className="text-xl font-semibold mb-2">Belastinginschatting</h3>
            <p>Realtime belasting- en winstwaarschuwingen met AI-tips.</p>
          </div>
        </section>
      </main>
      <footer className="p-6 bg-gray-100 text-center">
        <p>© {new Date().getFullYear()} Bookkpr. Alle rechten voorbehouden.</p>
      </footer>
    </>
  );
}

// File: app/features/page.tsx (Features)
import Head from 'next/head';

export default function Features() {
  return (
    <>
      <Head>
        <title>Features - Bookkpr</title>
      </Head>
      <main className="max-w-5xl mx-auto p-8">
        <h2 className="text-3xl font-bold mb-4">Wat Bookkpr kan</h2>
        <ul className="space-y-4">
          <li>✅ Automatische facturatie met QR & Tap-to-Pay</li>
          <li>✅ Bonnetjes scannen via camera of e-mail (OCR)</li>
          <li>✅ Real-time belastinginschatting & AI-tips</li>
          <li>✅ Voorraadbeheer & margecalculatie</li>
          <li>✅ Sjablonen voor terugkerende services</li>
          <li>✅ Google Sheets & Docs export</li>
        </ul>
      </main>
    </>
  );
}

// File: app/pricing/page.tsx (Pricing)
import Head from 'next/head';

export default function Pricing() {
  return (
    <>
      <Head>
        <title>Pricing - Bookkpr</title>
      </Head>
      <main className="max-w-5xl mx-auto p-8">
        <h2 className="text-3xl font-bold mb-4">Prijzen</h2>
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div className="p-6 bg-white rounded-lg shadow">
            <h3 className="text-xl font-semibold">Starter</h3>
            <p className="text-2xl font-bold">€9,99 / maand</p>
            <ul className="my-4 list-disc list-inside">
              <li>Max 50 facturen/jaar</li>
              <li>Bonnetjesscanner</li>
            </ul>
          </div>
          <div className="p-6 bg-white rounded-lg shadow">
            <h3 className="text-xl font-semibold">Pro</h3>
            <p className="text-2xl font-bold">€24,99 / maand</p>
            <ul className="my-4 list-disc list-inside">
              <li>Onbeperkt facturen & bonnetjes</li>
              <li>Voorraadbeheer & marges</li>
              <li>AI-assistent</li>
            </ul>
          </div>
          <div className="p-6 bg-white rounded-lg shadow">
            <h3 className="text-xl font-semibold">Business</h3>
            <p className="text-2xl font-bold">€39,99 / maand</p>
            <ul className="my-4 list-disc list-inside">
              <li>Alles van Pro</li>
              <li>Google-integraties</li>
              <li>Persoonlijke ondersteuning</li>
            </ul>
          </div>
        </div>
      </main>
    </>
  );
}

// File: app/faq/page.tsx (FAQ)
import Head from 'next/head';

export default function FAQ() {
  return (
    <>
      <Head>
        <title>FAQ - Bookkpr</title>
      </Head>
      <main className="max-w-5xl mx-auto p-8">
        <h2 className="text-3xl font-bold mb-4">Veelgestelde Vragen</h2>
        <div className="space-y-6">
          <article>
            <h4 className="font-semibold">Hoe werkt de gratis proefperiode?</h4>
            <p>Je krijgt 14 dagen gratis toegang zonder betaalgegevens. Na afloop kun je eenvoudig een abonnement kiezen.</p>
          </article>
          <article>
            <h4 className="font-semibold">Kan ik mijn data exporteren?</h4>
            <p>Ja, je kunt exporteren naar Google Sheets of Google Docs, handmatig of automatisch.</p>
          </article>
        </div>
      </main>
    </>
  );
}

// File: app/contact/page.tsx (Contact)
import Head from 'next/head';

export default function Contact() {
  return (
    <>
      <Head>
        <title>Contact - Bookkpr</title>
      </Head>
      <main className="max-w-5xl mx-auto p-8">
        <h2 className="text-3xl font-bold mb-4">Contact</h2>
        <form className="space-y-4 max-w-lg">
          <label className="block">
            Naam
            <input type="text" name="name" className="mt-1 block w-full border rounded p-2" />
          </label>
          <label className="block">
            E-mail
            <input type="email" name="email" className="mt-1 block w-full border rounded p-2" />
          </label>
          <label className="block">
            Bericht
            <textarea name="message" className="mt-1 block w-full border rounded p-2"></textarea>
          </label>
          <button type="submit" className="px-4 py-2 bg-blue-600 text-white rounded hover:bg-blue-700">Verstuur</button>
        </form>
      </main>
    </>
  );
}

// File: app/not-found.tsx (Custom 404)
import Link from 'next/link';

export default function NotFound() {
  return (
    <div className="min-h-screen flex flex-col justify-center items-center bg-white">
      <h1 className="text-6xl font-bold mb-4">404</h1>
      <p className="text-xl mb-6">Pagina niet gevonden.</p>
      <Link href="/" className="text-blue-600 hover:underline">Ga terug naar Home</Link>
    </div>
  );
}

