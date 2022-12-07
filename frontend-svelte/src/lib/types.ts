export interface ProjectInterface {
    name: string;
    description: string;
    tags: string[];

    githubUrl: string;
    websiteUrl?: string;
}

export interface TechnologyInterface {
    name: string;
    description: string;
    icon: string;
}
