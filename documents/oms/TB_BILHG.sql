/*
================================================================================
��ṹ����:TB_BILHG
��ṹ����:�������˵�������ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILHG;
drop index AK_TB_BILHG;
drop table TB_BILHG;
create table TB_BILHG  (
   BILHG_ID              INTEGER                              not null,             /*�������۵���������ϸID    */        
   BILHG001              INTEGER                              not null,             /*���˵�ID                  */        
   BILHG002              INTEGER                              not null,             /*���۵�����ϸID            */        
   BILHG003              VARCHAR2(30)                         not null,             /*��������                  */        
   BILHG004              INTEGER                              not null,             /*����������ϸID            */        
   BILHG005              INTEGER                              not null,             /*��Ʒ����                  */        
   BILHG006              INTEGER,                                                   /*ά��1                     */        
   BILHG007              INTEGER,                                                   /*ά��2                     */        
   BILHG008              INTEGER,                                                   /*ά��3                     */        
   BILHG009              INTEGER,                                                   /*ά��4                     */        
   BILHG010              INTEGER,                                                   /*ά��5                     */        
   BILHG011              INTEGER                              not null,             /*�ֿ�                      */        
   BILHG012              INTEGER                              not null,             /*��λ                      */        
   BILHG013              INTEGER                              not null,             /*��λ                      */        
   BILHG014              NUMBER(12,2)                         not null,             /*��λ������                */        
   BILHG015              NUMBER(18,3)                         not null,             /*ԭ�������                */        
   BILHG016              NUMBER(18,3)                         not null,             /*���ε�������              */        
   BILHG017              NUMBER(12,2)                         not null,             /*ԭ˰ǰ����                */        
   BILHG018              NUMBER(12,2)                         not null,             /*ԭ��˰����                */        
   BILHG019              NUMBER(12,2)                         not null,             /*��˰ǰ����                */        
   BILHG020              NUMBER(12,2)                         not null,             /*�º�˰����                */        
   BILHG021              INTEGER                              not null,             /*˰��                      */               
   BILHG022              NUMBER(12,2)                         not null,             /*˰��                      */               
   BILHG023              NUMBER(12,2)                         not null,             /*ԭ˰ǰ���                */               
   BILHG024              NUMBER(12,2)                         not null,             /*ԭ��˰���                */               
   BILHG025              NUMBER(12,2)                         not null,             /*���ۺ�˰ǰ���            */               
   BILHG026              NUMBER(12,2)                         not null,             /*���ۺ�˰���            */               
   BILHG027              NUMBER(12,2)                         not null,             /*����δ������              */      
   BILHG028              NUMBER(12,2)                         not null,             /*����δ���������          */             
   BILHG029              NUMBER(12,2)                         not null,             /*��������ǰ˰ǰ���        */             
   BILHG030              NUMBER(12,2)                         not null,             /*��������ǰ��˰���        */             
   BILHG031              NUMBER(12,2)                         not null,             /*����������˰ǰ���        */             
   BILHG032              NUMBER(12,2)                         not null,             /*����������˰���        */             
   CREATE_USER          VARCHAR2(12),                                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                                       /*��������            */
   MODIFIER             VARCHAR2(12),                                               /*�޸���Ա            */
   MODI_DATE            DATE,                                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                    /*����״̬            */
   constraint PK_TB_BILHG primary key (BILHG_ID)
);
create unique index AK_TB_BILHG on TB_BILHG (BILHG003,BILHG005);
create sequence SEQ_TB_BILHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHG to public;
grant index  on TB_BILHG to public;
grant update on TB_BILHG to public; 
grant delete on TB_BILHG to public;  
grant insert on TB_BILHG to public; 
grant select on SEQ_TB_BILHG to public;   