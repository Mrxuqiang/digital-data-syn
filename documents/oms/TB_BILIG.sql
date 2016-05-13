/*
================================================================================
��ṹ����:TB_BILIG
��ṹ����:�ɱ��������˵�������ϸ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILIG;
drop index AK_TB_BILIG;
drop table TB_BILIG;
create table TB_BILIG  (
   BILIG_ID              INTEGER                              not null,             /*�ɱ��������۵���������ϸID    */        
   BILIG001              INTEGER                              not null,             /*���˵�ID                  */        
   BILIG002              INTEGER                              not null,             /*���۵�����ϸID            */        
   BILIG003              VARCHAR2(30)                         not null,             /*��������                  */        
   BILIG004              INTEGER                              not null,             /*����������ϸID            */        
   BILIG005              INTEGER                              not null,             /*��Ʒ����                  */        
   BILIG006              INTEGER,                                                   /*ά��1                     */        
   BILIG007              INTEGER,                                                   /*ά��2                     */        
   BILIG008              INTEGER,                                                   /*ά��3                     */        
   BILIG009              INTEGER,                                                   /*ά��4                     */        
   BILIG010              INTEGER,                                                   /*ά��5                     */        
   BILIG011              INTEGER                              not null,             /*�ֿ�                      */        
   BILIG012              INTEGER                              not null,             /*��λ                      */        
   BILIG013              INTEGER                              not null,             /*��λ                      */        
   BILIG014              NUMBER(12,2)                         not null,             /*��λ������                */        
   BILIG015              NUMBER(18,3)                         not null,             /*ԭ�������                */        
   BILIG016              NUMBER(18,3)                         not null,             /*���ε�������              */        
   BILIG017              NUMBER(12,2)                         not null,             /*ԭ˰ǰ����                */        
   BILIG018              NUMBER(12,2)                         not null,             /*ԭ��˰����                */        
   BILIG019              NUMBER(12,2)                         not null,             /*��˰ǰ����                */        
   BILIG020              NUMBER(12,2)                         not null,             /*�º�˰����                */        
   BILIG021              INTEGER                              not null,             /*˰��                      */               
   BILIG022              NUMBER(12,2)                         not null,             /*˰��                      */               
   BILIG023              NUMBER(12,2)                         not null,             /*ԭ˰ǰ���                */               
   BILIG024              NUMBER(12,2)                         not null,             /*ԭ��˰���                */               
   BILIG025              NUMBER(12,2)                         not null,             /*���ۺ�˰ǰ���            */               
   BILIG026              NUMBER(12,2)                         not null,             /*���ۺ�˰���            */               
   BILIG027              NUMBER(12,2)                         not null,             /*����δ������              */      
   BILIG028              NUMBER(12,2)                         not null,             /*����δ���������          */             
   BILIG029              NUMBER(12,2)                         not null,             /*��������ǰ˰ǰ���        */             
   BILIG030              NUMBER(12,2)                         not null,             /*��������ǰ��˰���        */             
   BILIG031              NUMBER(12,2)                         not null,             /*����������˰ǰ���        */             
   BILIG032              NUMBER(12,2)                         not null,             /*����������˰���        */             
   CREATE_USER          VARCHAR2(12),                                               /*������Ա            */
   USER_GROUP           VARCHAR2(12),                                               /*������Ա����        */                               
   CREATE_DATE          DATE,                                                       /*��������            */
   MODIFIER             VARCHAR2(12),                                               /*�޸���Ա            */
   MODI_DATE            DATE,                                                       /*�޸�����            */
   FLAG                 NUMBER(1),                                                  /*����״̬            */
   constraint PK_TB_BILIG primary key (BILIG_ID)
);
create unique index AK_TB_BILIG on TB_BILIG (BILIG003,BILIG005);
create sequence SEQ_TB_BILIG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIG to public;
grant index  on TB_BILIG to public;
grant update on TB_BILIG to public; 
grant delete on TB_BILIG to public;  
grant insert on TB_BILIG to public; 
grant select on SEQ_TB_BILIG to public;   