type NavLink = {
    title: string
    href: string
}

type NavLinksProps = {
    onClick?: () => void;
    linksNav: NavLink[];
}

function NavLinks({ onClick, linksNav }: NavLinksProps) {

console.log(linksNav)

    return (
        <div className=" gap-3 ">
            {linksNav.map(link => (
                <a
                    key={link.title}
                    href={link.href}
                    onClick={onClick}
                    className="block hover:text-blue-600 transition"
                >
                    {link.title}
                </a>
            ))}
        </div>
    );
}

export default NavLinks;
