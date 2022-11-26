<?php

namespace App\Exports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class UsersExport implements FromCollection, WithHeadings, WithStyles
{
    public function headings(): array
    {
        return [
            'ID',
            'Name',
            'Email',
            'Gender',
            'City',
            'Registered At',
        ];
    }
    
    public function styles(Worksheet $sheet)
    {
        return [
            // Style the first row as bold text.
            1    => ['font' => ['bold' => true]],
        ];
    }
    
    public function collection()
    {
        $users = User::select([
                    'id', 'name', 
                    'email', 'gender', 
                    'city', 'created_at'
                ])
                ->get();
                
        return $users;

    }
}
